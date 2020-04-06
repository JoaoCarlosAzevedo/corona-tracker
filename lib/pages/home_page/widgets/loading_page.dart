import 'package:corona_tracker/pages/home_page/widgets/char_card_loading.dart';
import 'package:corona_tracker/pages/home_page/widgets/countries_card_loading.dart';
import 'package:corona_tracker/pages/home_page/widgets/main_card_loading.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MainCardLoading(),
        SizedBox(height: 25),
        Container(
          height: 150,
          child: Row(
            children: <Widget>[
              CountriesLoading(),
              SizedBox(width: 30), 
              Expanded(child: CountriesLoading()),
            ],
          ),
        ),
        SizedBox(height: 25),
        ChartCardLoading(),
        SizedBox(height: 50),
      ],
    );
  }
}


