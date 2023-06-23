import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC0JIRHumf4Kk7wc9Bzn2aePAjpagRJ3JU",
            authDomain: "clearapp-a1d0e.firebaseapp.com",
            projectId: "clearapp-a1d0e",
            storageBucket: "clearapp-a1d0e.appspot.com",
            messagingSenderId: "119157806118",
            appId: "1:119157806118:web:12c78e2ea263fe185f82e7"));
  } else {
    await Firebase.initializeApp();
  }
}
