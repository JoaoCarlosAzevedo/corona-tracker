import 'package:corona_tracker/pages/home_page/widgets/bottom_appbar.dart';
import 'package:corona_tracker/pages/home_page/widgets/float_button.dart';
import 'package:corona_tracker/pages/home_page/widgets/horizontal_cards.dart';
import 'package:corona_tracker/pages/home_page/widgets/main_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(

              children: <Widget>[
                MainCard(),
                SizedBox(height: 25),
                Container(
                  height: 200,
                  child: ListCountriesData(),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomAppBar(),
      floatingActionButton: SizedBox(
        width: 100,
        height: 100,
        child: CustomFloatButtom(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
