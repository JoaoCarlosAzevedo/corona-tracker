import 'package:auto_size_text/auto_size_text.dart';
import 'package:corona_tracker/models/country.dart';
import 'package:corona_tracker/pages/home_page/widgets/chart_1.dart';
import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  final Country globalData;
  MainCard(this.globalData);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.all(Radius.circular(35)),
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: 200,
            height: 200,
            child: PieChartSample2(globalData),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Casos",
                    style: Theme.of(context).textTheme.title,
                  ),
                  AutoSizeText(
                    globalData.cases.toString(),
                    style: Theme.of(context).textTheme.display1,
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Mortes",
                    style: Theme.of(context).textTheme.title,
                  ),
                  Text(
                    globalData.deaths.toString(),
                    style: Theme.of(context).textTheme.display2,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Recuperados",
                    style: Theme.of(context).textTheme.title,
                  ),
                  Text(
                    globalData.recovered.toString(),
                    style: Theme.of(context).textTheme.display3,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
