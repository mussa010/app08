// ignore_for_file: prefer_const_constructors

import 'package:app08/firebase_options.dart';
import 'package:app08/view/cadastrar_view.dart';
import 'package:app08/view/login_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';



void main() async {

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(DevicePreview(
    enabled: true,
    builder: (context) => MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (context) => LoginView(),
        'cadastrar' : (context) => CadastrarView()
      },
    );
  }
}