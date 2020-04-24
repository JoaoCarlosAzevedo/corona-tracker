
import 'package:flutter/material.dart';

class BottoMenuOption {
  const BottoMenuOption(this.title, this.icon, this.color);
  final String title;
  final IconData icon;
  final MaterialColor color;
}


const List<BottoMenuOption> allOptions = <BottoMenuOption>[
  BottoMenuOption('Dados Globais'    , Icons.public, Colors.red),
  BottoMenuOption('Paises'           , Icons.explore, Colors.cyan),
  BottoMenuOption('School'           , Icons.public, Colors.orange),
  //BottoMenuOption('Flight'           , Icons.pie_chart, Colors.blue)
];
