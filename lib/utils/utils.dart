import 'dart:io';

import 'package:bot_toast/bot_toast.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in_dartio/google_sign_in_dartio.dart';
import 'package:logging/logging.dart';

import '../firebase_options.dart';
import 'theme.dart';

Future<void> initializeMainApp() async {
  configureLogger();
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb && (Platform.isMacOS || Platform.isWindows)) {
    await GoogleSignInDart.register(
        clientId: DefaultFirebaseOptions.desktopClientId);
  }
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.top]);
  await GetStorage.init(THEME_CONTAINER);
}

/// Log Utils

final log = Logger('Logs');

void configureLogger() {
  Logger.root.level = Level.ALL; // defaults to Level.INFO
  Logger.root.onRecord.listen((record) {
    if (kDebugMode) {
      print('${record.level.name}: ${record.time}: ${record.message}');
    }
  });
}

enum ToastType { success, warning, error }

extension ToastStyle on ToastType {
  Color color() {
    switch (this) {
      case ToastType.success:
        return Colors.greenAccent;

      case ToastType.warning:
        return Colors.yellowAccent;

      case ToastType.error:
        return Colors.redAccent;
    }
  }

  Icon icon() {
    switch (this) {
      case ToastType.success:
        return const Icon(Icons.check);
      case ToastType.warning:
        return const Icon(Icons.warning_amber);
      case ToastType.error:
        return const Icon(Icons.error);
    }
  }
}

/// Utility to display [message] as a toast.
void showToast(ToastType type, String message) {
  //VxToast.show(Get.context!, msg: message, bgColor: type.color());
  BotToast.showCustomText(
      toastBuilder: (void Function() cancelFunc) => Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: type.color(),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                type.icon(),
                const SizedBox(width: 12.0),
                Flexible(child: Text(message)),
              ],
            ),
          ));
  return;
}

String getInitials(String name) => name.isNotEmpty
    ? name.trim().split(RegExp(' +')).map((s) => s[0]).take(2).join()
    : '';
