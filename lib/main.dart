import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/Pages/HomePage/HomePage.dart';
import 'package:flutter_application_1/src/Pages/HomePage/FirstPage.dart';
import 'package:flutter_application_1/src/Pages/HomePage/SecondPage.dart';

import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyB_cEMHHivjdFyiBKK8lRsRypmF96QvXp8",
        authDomain: "flutter-6e81d.firebaseapp.com",
        projectId: "flutter-6e81d",
        storageBucket: "flutter-6e81d.appspot.com",
        messagingSenderId: "330435519602",
        appId: "1:330435519602:web:6cd7f7e1f37ee39fe8ceeb",
        measurementId: "G-5J968LJ0EJ"),
    name: 'your_app_name',
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Ruta inicial, puedes cambiarla según necesites
      routes: {
        '/': (context) => const HomePage(),
        '/firstPage': (context) => const FirstPage(),
        '/SecondPage': (context) => const SecondPage(),
      },
    );
  }
}
