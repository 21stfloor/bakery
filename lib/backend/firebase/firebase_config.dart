import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCT3YaOZstKCsHQAp_AD_tXi2DUTZikogw",
            authDomain: "bakery-delivery-7f4f6.firebaseapp.com",
            projectId: "bakery-delivery-7f4f6",
            storageBucket: "bakery-delivery-7f4f6.appspot.com",
            messagingSenderId: "491739460387",
            appId: "1:491739460387:web:88e092f245670774621296",
            measurementId: "G-72GQYK5K9D"));
  } else {
    await Firebase.initializeApp();
  }
}
