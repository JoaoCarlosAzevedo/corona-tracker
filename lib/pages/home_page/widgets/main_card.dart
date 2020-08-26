import 'package:auto_size_text/auto_size_text.dart';
import 'package:corona_tracker/models/global.dart';
import 'package:corona_tracker/pages/home_page/widgets/chart_1.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MainCard extends StatelessWidget {
  final Global globalData;
  MainCard(this.globalData);

  @override
  Widget build(BuildContext context) {
    var numberMask = NumberFormat("###,###,###,###", "pt_BR");

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
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  AutoSizeText(
                    "Casos",
                    style: Theme.of(context).textTheme.title,
                    maxLines: 1,
                  ),
                  AutoSizeText(
                    numberMask.format(globalData.cases),
                    style: Theme.of(context).textTheme.display1,
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  AutoSizeText(
                    "Mortes",
                    style: Theme.of(context).textTheme.title,
                    maxLines: 1,
                  ),
                  AutoSizeText(
                    numberMask.format(globalData.deaths),
                    style: Theme.of(context).textTheme.display2,
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  AutoSizeText(
                    "Recuperados",
                    style: Theme.of(context).textTheme.title,
                    maxLines: 1,
                  ),
                  AutoSizeText(
                    numberMask.format(globalData.recovered),
                    style: Theme.of(context).textTheme.display3,
                    maxLines: 1,
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
