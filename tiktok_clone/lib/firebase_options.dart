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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for android - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDAvT1z4eGi5ASI_2rgww1du_h9-pFGeHg',
    appId: '1:215848634527:web:47d3c6e784184fb1d83aaa',
    messagingSenderId: '215848634527',
    projectId: 'tiktok-clone-fbcfa',
    authDomain: 'tiktok-clone-fbcfa.firebaseapp.com',
    storageBucket: 'tiktok-clone-fbcfa.appspot.com',
    measurementId: 'G-RCKELCSQ13',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAdGoDO6LwBK7fEmpVf6PDg2NP8eoBEnAg',
    appId: '1:215848634527:ios:6cb7960e77139be9d83aaa',
    messagingSenderId: '215848634527',
    projectId: 'tiktok-clone-fbcfa',
    storageBucket: 'tiktok-clone-fbcfa.appspot.com',
    iosBundleId: 'com.example.tiktokClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAdGoDO6LwBK7fEmpVf6PDg2NP8eoBEnAg',
    appId: '1:215848634527:ios:ff3a52e4df3f2e1ed83aaa',
    messagingSenderId: '215848634527',
    projectId: 'tiktok-clone-fbcfa',
    storageBucket: 'tiktok-clone-fbcfa.appspot.com',
    iosBundleId: 'com.example.tiktokClone.RunnerTests',
  );
}
