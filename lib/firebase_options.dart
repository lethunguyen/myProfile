// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBw1hbypAcDD7DcDzhiYeic1iCE17T3Ebs',
    appId: '1:837780831588:web:e940f387fae658dd5a4e71',
    messagingSenderId: '837780831588',
    projectId: 'my-profile-d404f',
    authDomain: 'my-profile-d404f.firebaseapp.com',
    storageBucket: 'my-profile-d404f.firebasestorage.app',
    measurementId: 'G-VL04B2JV2H',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDtIyk_DgY4AtjYuQVP7wD6QKA8b7AijQY',
    appId: '1:837780831588:android:33c16a7dfb976d5e5a4e71',
    messagingSenderId: '837780831588',
    projectId: 'my-profile-d404f',
    storageBucket: 'my-profile-d404f.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCo31E-0yMjUorpdCQvKDYq9C_Whshk3kg',
    appId: '1:837780831588:ios:c2183adc06d0ad075a4e71',
    messagingSenderId: '837780831588',
    projectId: 'my-profile-d404f',
    storageBucket: 'my-profile-d404f.firebasestorage.app',
    iosBundleId: 'com.example.myapptest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCo31E-0yMjUorpdCQvKDYq9C_Whshk3kg',
    appId: '1:837780831588:ios:c2183adc06d0ad075a4e71',
    messagingSenderId: '837780831588',
    projectId: 'my-profile-d404f',
    storageBucket: 'my-profile-d404f.firebasestorage.app',
    iosBundleId: 'com.example.myapptest',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBw1hbypAcDD7DcDzhiYeic1iCE17T3Ebs',
    appId: '1:837780831588:web:b0ffb030151c47615a4e71',
    messagingSenderId: '837780831588',
    projectId: 'my-profile-d404f',
    authDomain: 'my-profile-d404f.firebaseapp.com',
    storageBucket: 'my-profile-d404f.firebasestorage.app',
    measurementId: 'G-MN2JXCS9MR',
  );

}