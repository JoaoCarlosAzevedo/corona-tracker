import 'package:corona_tracker/models/country.dart';
import 'package:corona_tracker/pages/home_page/widgets/chart_2.dart';
import 'package:flutter/material.dart';

class ChartCard extends StatelessWidget {
  final List<Country> countries;
  ChartCard(this.countries);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 200, 
      //padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        //color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.all(Radius.circular(35)),
      ),
      child: BarChartSample3(countries),
    );
  }
}