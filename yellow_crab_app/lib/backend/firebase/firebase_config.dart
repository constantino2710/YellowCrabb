import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCgkknFD3XmaosryPg_1EjaQ5Cv8nW_EEg",
            authDomain: "yellow-crab.firebaseapp.com",
            projectId: "yellow-crab",
            storageBucket: "yellow-crab.appspot.com",
            messagingSenderId: "568763560248",
            appId: "1:568763560248:web:e1bd9b0e9267e7260511cd"));
  } else {
    await Firebase.initializeApp();
  }
}
