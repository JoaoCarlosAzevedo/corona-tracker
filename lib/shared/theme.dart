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
      headline: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white),
      title:    TextStyle(fontSize: 20.0, fontStyle: FontStyle.normal, color: Colors.grey.shade400),
      subtitle: TextStyle(fontSize: 15.0, fontStyle: FontStyle.italic, color: Colors.brown),
      //body1:    TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      display1: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white),
      display2: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.red.shade400),
      display3: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.green.shade500),
    ),
  );
}

