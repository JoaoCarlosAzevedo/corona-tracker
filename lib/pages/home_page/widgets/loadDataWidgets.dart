import 'package:corona_tracker/pages/home_page/widgets/chart_card.dart';
import 'package:corona_tracker/pages/home_page/widgets/horizontal_cards.dart';
import 'package:corona_tracker/pages/home_page/widgets/main_card.dart';
import 'package:corona_tracker/stores/global_store.dart';
import 'package:flutter/material.dart';

class LoadDataWidgets extends StatelessWidget {
  final GlobalApiStore _globalDataStore;

  LoadDataWidgets(this._globalDataStore);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MainCard(_globalDataStore.globalData),
        SizedBox(height: 25),
        Container(
          height: 150,
          child: ListCountriesData(_globalDataStore.rankedCountries),
        ),
        SizedBox(height: 25), 
        ChartCard(_globalDataStore.rankedCountries),
        SizedBox(height: 50),
      ],
    );
  } 
}
