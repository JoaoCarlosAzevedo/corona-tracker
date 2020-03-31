import 'package:corona_tracker/pages/home_page/widgets/chart_1.dart';
import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.all(Radius.circular(35)),
      ),
      child: _buildChart(context),
    );
  }
}

Widget _buildChart(BuildContext context) {
  return Row(
    children: <Widget>[
      Container(
        width: 200,
        height: 200,
        child: PieChartSample2(),
      ),
      _textData(context),
    ],
  );
}

Widget _textData(BuildContext context) {
  return Expanded(
    child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text("Casos", style: Theme.of(context).textTheme.title,),
          Text("400.000", style: Theme.of(context).textTheme.display1,),
          SizedBox(height: 15,),
          Text("Mortes", style: Theme.of(context).textTheme.title,),
          Text("5.000", style: Theme.of(context).textTheme.display2,),
          SizedBox(height: 15,),
          Text("Recuperados", style: Theme.of(context).textTheme.title,),
          Text("350.000", style: Theme.of(context).textTheme.display3,),

          //Text("400.000", style: Theme.of(context).textTheme.display1,),
          //Text("Data1", style: Theme.of(context).textTheme.title,),
          //Text("Data1", style: Theme.of(context).textTheme.title,),
        ],
      ),
    ),
  );
}
