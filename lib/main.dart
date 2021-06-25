import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'splashscreen.dart';

// Bem Vinda Bruna, é uma alegria trabalhar com todos que se empenham em contruir um futuro melhor !!!

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext contextP) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen()
    );
  }
}