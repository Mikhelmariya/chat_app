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
    apiKey: 'AIzaSyCy-cltFtx5b-GtW619S_36oV63jXoqqzc',
    appId: '1:1018940373039:web:2c21d501fd3f7ffc4feeda',
    messagingSenderId: '1018940373039',
    projectId: 'myworks-20158',
    authDomain: 'myworks-20158.firebaseapp.com',
    storageBucket: 'myworks-20158.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCDg0QOxcMxsnJgXGBlDPUVRR-LvfaqgTw',
    appId: '1:1018940373039:android:1dd567df3476ac404feeda',
    messagingSenderId: '1018940373039',
    projectId: 'myworks-20158',
    storageBucket: 'myworks-20158.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCm7GC4_Pt-2E2SXaRTezztXivSsdNVtHg',
    appId: '1:1018940373039:ios:7df601a79ed76cb04feeda',
    messagingSenderId: '1018940373039',
    projectId: 'myworks-20158',
    storageBucket: 'myworks-20158.appspot.com',
    iosClientId: '1018940373039-2rar2edck036badmjbtvtqg889jd9bhn.apps.googleusercontent.com',
    iosBundleId: 'com.example.flashChat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCm7GC4_Pt-2E2SXaRTezztXivSsdNVtHg',
    appId: '1:1018940373039:ios:7df601a79ed76cb04feeda',
    messagingSenderId: '1018940373039',
    projectId: 'myworks-20158',
    storageBucket: 'myworks-20158.appspot.com',
    iosClientId: '1018940373039-2rar2edck036badmjbtvtqg889jd9bhn.apps.googleusercontent.com',
    iosBundleId: 'com.example.flashChat',
  );
}
