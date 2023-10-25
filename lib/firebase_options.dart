// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return macos;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBOiQlgfq0kxEKCChiyay8p2RTJzncRcrw',
    appId: '1:475778353428:web:3852583c17c73da8f0da01',
    messagingSenderId: '475778353428',
    projectId: 'sync-player-akm512',
    authDomain: 'sync-player-akm512.firebaseapp.com',
    storageBucket: 'sync-player-akm512.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDPe5U4jy7iKgE25kKS-5ld_H5vy36QiBc',
    appId: '1:475778353428:android:6426856d39ad1128f0da01',
    messagingSenderId: '475778353428',
    projectId: 'sync-player-akm512',
    storageBucket: 'sync-player-akm512.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB5SrhMNj3YDt8Bt9DOKF1buuYLrgZS-RU',
    appId: '1:475778353428:ios:29d595a724e9f900f0da01',
    messagingSenderId: '475778353428',
    projectId: 'sync-player-akm512',
    storageBucket: 'sync-player-akm512.appspot.com',
    iosClientId:
        '475778353428-e6i1n78vegbqvdkifsv60c0bk85npba9.apps.googleusercontent.com',
    iosBundleId: 'com.princeakash.syncPlayer',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB5SrhMNj3YDt8Bt9DOKF1buuYLrgZS-RU',
    appId: '1:475778353428:ios:0d1750f841ac07a8f0da01',
    messagingSenderId: '475778353428',
    projectId: 'sync-player-akm512',
    storageBucket: 'sync-player-akm512.appspot.com',
    iosClientId:
        '475778353428-0rgij0g4ra9792dm40qja27afig25npp.apps.googleusercontent.com',
    iosBundleId: 'com.princeakash.syncPlayer.RunnerTests',
  );

  static String desktopClientId =
      '475778353428-1505eir723s19cahv62b95b7car5up0t.apps.googleusercontent.com';
}
