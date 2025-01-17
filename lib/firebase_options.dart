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
    apiKey: 'AIzaSyCq4cqqR9ggNaDR2eD551f7wtPyWYEsdT0',
    appId: '1:605271242503:web:a1c36648b813fd04f0b7a2',
    messagingSenderId: '605271242503',
    projectId: 'todolistgetx',
    authDomain: 'todolistgetx.firebaseapp.com',
    storageBucket: 'todolistgetx.firebasestorage.app',
    measurementId: 'G-1Z6N07R02P',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCCude99SmB604QynKDYeule6laaWurvow',
    appId: '1:605271242503:android:8044e47f8d26a122f0b7a2',
    messagingSenderId: '605271242503',
    projectId: 'todolistgetx',
    storageBucket: 'todolistgetx.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDXpS2C52IowC62o0NIBuHUmi3GsA9FH-Q',
    appId: '1:605271242503:ios:40faf258272e22daf0b7a2',
    messagingSenderId: '605271242503',
    projectId: 'todolistgetx',
    storageBucket: 'todolistgetx.firebasestorage.app',
    iosBundleId: 'com.example.todoListGetx',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDXpS2C52IowC62o0NIBuHUmi3GsA9FH-Q',
    appId: '1:605271242503:ios:40faf258272e22daf0b7a2',
    messagingSenderId: '605271242503',
    projectId: 'todolistgetx',
    storageBucket: 'todolistgetx.firebasestorage.app',
    iosBundleId: 'com.example.todoListGetx',
  );
}
