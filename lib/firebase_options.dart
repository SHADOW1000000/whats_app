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
    apiKey: 'AIzaSyATyE6g4bhe1s4RiuQYaTs3mbj1znLGvw0',
    appId: '1:784665392938:web:7b7c0b819437c1c4ac1053',
    messagingSenderId: '784665392938',
    projectId: 'whatsapp-57a31',
    authDomain: 'whatsapp-57a31.firebaseapp.com',
    storageBucket: 'whatsapp-57a31.appspot.com',
    measurementId: 'G-R0P2RF12QG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBMseL8rok3o3OrdvjKuNgqz5XaJGASpR4',
    appId: '1:784665392938:android:3ea48ce351979729ac1053',
    messagingSenderId: '784665392938',
    projectId: 'whatsapp-57a31',
    storageBucket: 'whatsapp-57a31.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDRTGeiM-saWw6-vqBNpXu6Yt_OlZiI_Mg',
    appId: '1:784665392938:ios:e8d3e46a36a1257aac1053',
    messagingSenderId: '784665392938',
    projectId: 'whatsapp-57a31',
    storageBucket: 'whatsapp-57a31.appspot.com',
    iosBundleId: 'com.Marwan.whatsApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDRTGeiM-saWw6-vqBNpXu6Yt_OlZiI_Mg',
    appId: '1:784665392938:ios:e8d3e46a36a1257aac1053',
    messagingSenderId: '784665392938',
    projectId: 'whatsapp-57a31',
    storageBucket: 'whatsapp-57a31.appspot.com',
    iosBundleId: 'com.Marwan.whatsApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyATyE6g4bhe1s4RiuQYaTs3mbj1znLGvw0',
    appId: '1:784665392938:web:c097451c2f0a3445ac1053',
    messagingSenderId: '784665392938',
    projectId: 'whatsapp-57a31',
    authDomain: 'whatsapp-57a31.firebaseapp.com',
    storageBucket: 'whatsapp-57a31.appspot.com',
    measurementId: 'G-QBQTNJD3PG',
  );
}
