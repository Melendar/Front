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
    apiKey: 'AIzaSyD18yZftmoZlmqUjD_wyjcf1BBHmXR5ltk',
    appId: '1:863247481680:web:82e0e94ead50034fafca55',
    messagingSenderId: '863247481680',
    projectId: 'melendar-29396',
    authDomain: 'melendar-29396.firebaseapp.com',
    storageBucket: 'melendar-29396.firebasestorage.app',
    measurementId: 'G-0Z8LVEFQ6C',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyALE0dTTBKxxenK15dxWlR_Ur9wZ290Zto',
    appId: '1:863247481680:android:bbfdd6740d06b285afca55',
    messagingSenderId: '863247481680',
    projectId: 'melendar-29396',
    storageBucket: 'melendar-29396.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBkafJpAgQzCrzDflF-pz4dafDxLjHRWLY',
    appId: '1:863247481680:ios:9ed9e7426be87ed5afca55',
    messagingSenderId: '863247481680',
    projectId: 'melendar-29396',
    storageBucket: 'melendar-29396.firebasestorage.app',
    iosBundleId: 'com.example.melendarBack',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBkafJpAgQzCrzDflF-pz4dafDxLjHRWLY',
    appId: '1:863247481680:ios:9ed9e7426be87ed5afca55',
    messagingSenderId: '863247481680',
    projectId: 'melendar-29396',
    storageBucket: 'melendar-29396.firebasestorage.app',
    iosBundleId: 'com.example.melendarBack',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD18yZftmoZlmqUjD_wyjcf1BBHmXR5ltk',
    appId: '1:863247481680:web:66a356e72ace74afafca55',
    messagingSenderId: '863247481680',
    projectId: 'melendar-29396',
    authDomain: 'melendar-29396.firebaseapp.com',
    storageBucket: 'melendar-29396.firebasestorage.app',
    measurementId: 'G-6J1N13VCJ5',
  );

}