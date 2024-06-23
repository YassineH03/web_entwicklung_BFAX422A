import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCPiZkzfNblqZ8jthsC1vmR1jLdq9ttRyU",
            authDomain: "my-todo-f068f.firebaseapp.com",
            projectId: "my-todo-f068f",
            storageBucket: "my-todo-f068f.appspot.com",
            messagingSenderId: "1098213297068",
            appId: "1:1098213297068:web:1d717ed47fadb71d20c809"));
  } else {
    await Firebase.initializeApp();
  }
}
