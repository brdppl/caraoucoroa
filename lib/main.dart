import 'package:caraoucoroa/home.dart';
import 'package:caraoucoroa/resultado.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/resultado': (context) => Resultado(ModalRoute.of(context).settings.arguments)
      },
      home: Home()
    );
  }
}