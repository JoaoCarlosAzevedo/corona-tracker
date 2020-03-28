import 'package:corona_tracker/pages/home_page/home_page.dart';
import 'package:corona_tracker/shared/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Corona Tracker', 
      theme: defaultTheme, 
      home: HomePage(),
    ));
