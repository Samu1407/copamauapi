import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDJZQp2EgAI9_APKtI_-ZkC-VhIw6yLMsQ",
            authDomain: "testepi-5858e.firebaseapp.com",
            projectId: "testepi-5858e",
            storageBucket: "testepi-5858e.appspot.com",
            messagingSenderId: "778619472544",
            appId: "1:778619472544:web:7e14e14077ca0d2eeb97c5"));
  } else {
    await Firebase.initializeApp();
  }
}
