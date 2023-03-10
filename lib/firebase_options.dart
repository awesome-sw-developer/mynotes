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
    apiKey: 'AIzaSyC5T3uFuNQMpT28ekL-sTezHVgYaYDPP78',
    appId: '1:578489430705:web:dfaf0da2588a72478e2890',
    messagingSenderId: '578489430705',
    projectId: 'mynew-naveed-notes',
    authDomain: 'mynew-naveed-notes.firebaseapp.com',
    storageBucket: 'mynew-naveed-notes.appspot.com',
    measurementId: 'G-B36THG0T2D',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD545hQGtHSSz424H_PVi3dmpC3XxMsaJ8',
    appId: '1:578489430705:android:4753b3aec0024eb18e2890',
    messagingSenderId: '578489430705',
    projectId: 'mynew-naveed-notes',
    storageBucket: 'mynew-naveed-notes.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyACfvTTZehP0QncNXsl3Lq-u93wJJKA9Dg',
    appId: '1:578489430705:ios:b102d43b51eb46928e2890',
    messagingSenderId: '578489430705',
    projectId: 'mynew-naveed-notes',
    storageBucket: 'mynew-naveed-notes.appspot.com',
    iosClientId: '578489430705-fl7asnlnsmta8772rvaqmpdg8uvq2u4q.apps.googleusercontent.com',
    iosBundleId: 'com.example.mynotes',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyACfvTTZehP0QncNXsl3Lq-u93wJJKA9Dg',
    appId: '1:578489430705:ios:b102d43b51eb46928e2890',
    messagingSenderId: '578489430705',
    projectId: 'mynew-naveed-notes',
    storageBucket: 'mynew-naveed-notes.appspot.com',
    iosClientId: '578489430705-fl7asnlnsmta8772rvaqmpdg8uvq2u4q.apps.googleusercontent.com',
    iosBundleId: 'com.example.mynotes',
  );
}
