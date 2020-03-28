import 'package:flutter/material.dart';

final ThemeData defaultTheme = _buildDefaultTheme();

ThemeData _buildDefaultTheme() {
  return ThemeData(
    // Define the default brightness and colors.
    //brightness: Brightness.light,
    primaryColor:    Color(0xFF181F3D),
    accentColor:     Color(0xFF232C51),

    indicatorColor:  Colors.green,
    accentColorBrightness: Brightness.light,

    // Define the default font family.
    fontFamily: 'Montserrat',
    hintColor: Colors.grey.shade300, //hint de campos get

    textTheme: TextTheme(
      //headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold,color: Colors.yellow),
      title: TextStyle(
          fontSize: 20.0, fontStyle: FontStyle.normal, color: Colors.red),
      subtitle: TextStyle(
          fontSize: 15.0, fontStyle: FontStyle.italic, color: Colors.brown),
      //body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      //display1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold, color: Colors.blueAccent),
    ),
  );
}

//#302D45 - azul escuro
//#3A3654 - azul escuro claro
//#ED3237 - vermelho
