import 'package:flutter/material.dart';
import 'package:tictic/screens/welcome.dart';
import './constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: kAppTheme, //Si on regarde la constante c'est générer et ça permet de définir l'ensemble des variables qui vont être utilisés pour faire l'aspect couleur de notre application
      home: const Welcome(),
    );
  }
}

