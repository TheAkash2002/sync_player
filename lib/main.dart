import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ui/screens/home.dart';
import 'ui/screens/login.dart';
import 'ui/screens/splash.dart';
import 'utils/theme.dart';
import 'utils/utils.dart';

void main() async {
  await initializeMainApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: BotToastInit(),
      navigatorObservers: [BotToastNavigatorObserver()],
      title: 'Sync Player',
      theme: loadThemeData(),
      themeMode: ThemeMode.light,
      initialRoute: '/splash',
      getPages: [
        GetPage(
          name: '/splash',
          page: () => const Splash(),
        ),
        GetPage(
          name: '/login',
          page: () => const Login(),
        ),
        GetPage(
          name: '/',
          page: () => const Home(),
        ),
      ],
    );
  }
}
