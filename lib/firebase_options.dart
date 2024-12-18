

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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBHKJwR14ZCcLoI5IsWFKgPkPDWMhKpuFs',
    appId: '1:776395003279:android:f844907ce60fe8bd4c67fa',
    messagingSenderId: '776395003279',
    projectId: 'ecommerce-app-be78c',
    databaseURL: 'https://ecommerce-app-be78c-default-rtdb.firebaseio.com',
    storageBucket: 'ecommerce-app-be78c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAwRbPJ_pZAzwTvRv7ZrNrrKOZ2de89qhs',
    appId: '1:776395003279:ios:3ab2d8060e976e534c67fa',
    messagingSenderId: '776395003279',
    projectId: 'ecommerce-app-be78c',
    databaseURL: 'https://ecommerce-app-be78c-default-rtdb.firebaseio.com',
    storageBucket: 'ecommerce-app-be78c.appspot.com',
    iosClientId: '776395003279-01oiibohd23f05h87mdramt1ieftn955.apps.googleusercontent.com',
    iosBundleId: 'com.example.ecommereceApp',
  );

}