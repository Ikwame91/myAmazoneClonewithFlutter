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
    apiKey: 'AIzaSyBxlKIxweUQ20uN63dEp08KNKsjKelNLJc',
    appId: '1:106133232622:web:6fc48fb76fe094a2cc0cff',
    messagingSenderId: '106133232622',
    projectId: 'myeclone-3867f',
    authDomain: 'myeclone-3867f.firebaseapp.com',
    storageBucket: 'myeclone-3867f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDkhqaBaAIXMKJZGsf3ZlMtXAwfvCMYeCc',
    appId: '1:106133232622:android:d73717c26be74b1ccc0cff',
    messagingSenderId: '106133232622',
    projectId: 'myeclone-3867f',
    storageBucket: 'myeclone-3867f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDc7kuGJyJFBv7wsOxko-Zfcfxd1WSMHpw',
    appId: '1:106133232622:ios:14321ef3912a23fbcc0cff',
    messagingSenderId: '106133232622',
    projectId: 'myeclone-3867f',
    storageBucket: 'myeclone-3867f.appspot.com',
    iosBundleId: 'kwames.app.myownAmazoneClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDc7kuGJyJFBv7wsOxko-Zfcfxd1WSMHpw',
    appId: '1:106133232622:ios:18c7d0194df6d7d6cc0cff',
    messagingSenderId: '106133232622',
    projectId: 'myeclone-3867f',
    storageBucket: 'myeclone-3867f.appspot.com',
    iosBundleId: 'kwames.app.myownAmazoneClone.RunnerTests',
  );
}
