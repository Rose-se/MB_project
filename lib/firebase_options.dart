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
    apiKey: 'AIzaSyCAryIRONNHN70XwcqhAS155NRgp39mj30',
    appId: '1:688287932029:web:701b0153eac1920b74db14',
    messagingSenderId: '688287932029',
    projectId: 'starwar-e2c2d',
    authDomain: 'starwar-e2c2d.firebaseapp.com',
    storageBucket: 'starwar-e2c2d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD4eBPHhhf0_dq_qRx28DVt0rWJMofpPpY',
    appId: '1:688287932029:android:cda4b678ed3b67e774db14',
    messagingSenderId: '688287932029',
    projectId: 'starwar-e2c2d',
    storageBucket: 'starwar-e2c2d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDuA2zNLsmYmvQ--MET_7rFVm_yM8dz7pU',
    appId: '1:688287932029:ios:a6ec115c7312c54974db14',
    messagingSenderId: '688287932029',
    projectId: 'starwar-e2c2d',
    storageBucket: 'starwar-e2c2d.appspot.com',
    iosClientId: '688287932029-0k2t4nu2la478bnc4198ot83823j86j1.apps.googleusercontent.com',
    iosBundleId: 'com.example.mbappfinal',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDuA2zNLsmYmvQ--MET_7rFVm_yM8dz7pU',
    appId: '1:688287932029:ios:a6ec115c7312c54974db14',
    messagingSenderId: '688287932029',
    projectId: 'starwar-e2c2d',
    storageBucket: 'starwar-e2c2d.appspot.com',
    iosClientId: '688287932029-0k2t4nu2la478bnc4198ot83823j86j1.apps.googleusercontent.com',
    iosBundleId: 'com.example.mbappfinal',
  );
}
