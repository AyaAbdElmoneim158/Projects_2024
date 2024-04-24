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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyASPyPRIIBjWhTfQlt09QAREQaMzpfA9IA',
    appId: '1:421349787622:web:756432a8fe7f726bddb827',
    messagingSenderId: '421349787622',
    projectId: 'ecommerce-app-2024',
    authDomain: 'ecommerce-app-2024.firebaseapp.com',
    storageBucket: 'ecommerce-app-2024.appspot.com',
    measurementId: 'G-1M6E3E516F',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDJhBfyDPdFCoNc8e9Ftd19KfWNas3bHXw',
    appId: '1:421349787622:android:a995502a301da068ddb827',
    messagingSenderId: '421349787622',
    projectId: 'ecommerce-app-2024',
    storageBucket: 'ecommerce-app-2024.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAqSpjowRtjd2G6xP3t4Uig8bMp3R4psuU',
    appId: '1:421349787622:ios:73082acea216915addb827',
    messagingSenderId: '421349787622',
    projectId: 'ecommerce-app-2024',
    storageBucket: 'ecommerce-app-2024.appspot.com',
    iosClientId: '421349787622-naf0nd5s3hud8c7s716ijhbnn8qcflur.apps.googleusercontent.com',
    iosBundleId: 'com.example.clickCounter',
  );
}