import 'package:corona_tracker/pages/home_page/home_page.dart';
import 'package:corona_tracker/repositories/countries_repository.dart';
import 'package:corona_tracker/shared/theme.dart';
import 'package:corona_tracker/stores/global_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Corona Tracker', 
      theme: defaultTheme, 
      home: Provider( 
        create: (_) => GlobalApiStore(ConnectionCountrieslRepository()),
        child: HomePage()
        ),
    ));
