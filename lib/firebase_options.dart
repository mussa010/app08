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
    apiKey: 'AIzaSyC9v4Q3qWKYSdeqb5ptNgNpiA91xgOnDpM',
    appId: '1:434216583097:web:51bb5a0a4848a2c178c068',
    messagingSenderId: '434216583097',
    projectId: 'app-lista-tarefas-engcom-33524',
    authDomain: 'app-lista-tarefas-engcom-33524.firebaseapp.com',
    storageBucket: 'app-lista-tarefas-engcom-33524.appspot.com',
    measurementId: 'G-0TYHVL8W4M',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDV8YXgCsvZYIVUtDxqW8qGXapxluo6jtE',
    appId: '1:434216583097:android:bef395858e67e39c78c068',
    messagingSenderId: '434216583097',
    projectId: 'app-lista-tarefas-engcom-33524',
    storageBucket: 'app-lista-tarefas-engcom-33524.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCCy_8UdapROHJGvcQOq8drQxbTc8jfWio',
    appId: '1:434216583097:ios:d780829659ef1d5478c068',
    messagingSenderId: '434216583097',
    projectId: 'app-lista-tarefas-engcom-33524',
    storageBucket: 'app-lista-tarefas-engcom-33524.appspot.com',
    iosBundleId: 'com.example.app08',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCCy_8UdapROHJGvcQOq8drQxbTc8jfWio',
    appId: '1:434216583097:ios:d780829659ef1d5478c068',
    messagingSenderId: '434216583097',
    projectId: 'app-lista-tarefas-engcom-33524',
    storageBucket: 'app-lista-tarefas-engcom-33524.appspot.com',
    iosBundleId: 'com.example.app08',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC9v4Q3qWKYSdeqb5ptNgNpiA91xgOnDpM',
    appId: '1:434216583097:web:86c0eb8c12e0ab8878c068',
    messagingSenderId: '434216583097',
    projectId: 'app-lista-tarefas-engcom-33524',
    authDomain: 'app-lista-tarefas-engcom-33524.firebaseapp.com',
    storageBucket: 'app-lista-tarefas-engcom-33524.appspot.com',
    measurementId: 'G-DESWDCXD6L',
  );
}