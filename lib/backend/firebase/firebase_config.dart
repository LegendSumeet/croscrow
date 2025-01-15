import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDLvuGxcyM9bq3yCoJFhFgzwryDCTFY7p8",
            authDomain: "ss99-35d8f.firebaseapp.com",
            projectId: "ss99-35d8f",
            storageBucket: "ss99-35d8f.appspot.com",
            messagingSenderId: "538495467374",
            appId: "1:538495467374:web:684ddab8e767abeffc4b7f",
            measurementId: "G-HNS63D4FNJ"));
  } else {
    await Firebase.initializeApp();
  }
}
