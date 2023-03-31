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
    apiKey: 'AIzaSyAX1kCU4FMIhCA2a1erbrTPnK7fhEE4eWI',
    appId: '1:541313205758:web:18d1e18e572ded176cacaf',
    messagingSenderId: '541313205758',
    projectId: 'mytherapyauth',
    authDomain: 'mytherapyauth.firebaseapp.com',
    storageBucket: 'mytherapyauth.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAKrUTjB_m_2tnijJO06KsVriU5u5osuRA',
    appId: '1:541313205758:android:32d533940dee03e66cacaf',
    messagingSenderId: '541313205758',
    projectId: 'mytherapyauth',
    storageBucket: 'mytherapyauth.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDt6FXZwWQMABJGbSUjig4XnYeAes7pvwM',
    appId: '1:541313205758:ios:0327f2f5ac86e2076cacaf',
    messagingSenderId: '541313205758',
    projectId: 'mytherapyauth',
    storageBucket: 'mytherapyauth.appspot.com',
    iosClientId: '541313205758-1jqebs9p7u695rh5tirlpspj34te7j3k.apps.googleusercontent.com',
    iosBundleId: 'com.example.myTherapy',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDt6FXZwWQMABJGbSUjig4XnYeAes7pvwM',
    appId: '1:541313205758:ios:0327f2f5ac86e2076cacaf',
    messagingSenderId: '541313205758',
    projectId: 'mytherapyauth',
    storageBucket: 'mytherapyauth.appspot.com',
    iosClientId: '541313205758-1jqebs9p7u695rh5tirlpspj34te7j3k.apps.googleusercontent.com',
    iosBundleId: 'com.example.myTherapy',
  );
}
