import 'package:corona_tracker/models/country.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartSample3 extends StatefulWidget {
  final List<Country> countries;
  BarChartSample3(this.countries);
  @override
  State<StatefulWidget> createState() => BarChartSample3State();
}

class BarChartSample3State extends State<BarChartSample3> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
        color: Theme.of(context).accentColor,
        child: BarChart(
          BarChartData(
            alignment: BarChartAlignment.spaceEvenly,
            maxY: 20,
            barTouchData: BarTouchData( 
              enabled: false,
              touchTooltipData: BarTouchTooltipData(
                tooltipBgColor: Colors.transparent,
                tooltipPadding: const EdgeInsets.all(0),
                tooltipBottomMargin: 8,
                getTooltipItem: (
                  BarChartGroupData group,
                  int groupIndex,
                  BarChartRodData rod,
                  int rodIndex,
                ) {
                  return BarTooltipItem(
                    rod.y.round().toString(),
                    TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
            ),
            titlesData: FlTitlesData(
              show: true,
              bottomTitles: SideTitles(
                showTitles: true,
                textStyle: TextStyle(
                    color: const Color(0xff7589a2), fontWeight: FontWeight.bold, fontSize: 14),
                margin: 10,
                getTitles: (double value) {
                  switch (value.toInt()) {
                    case 0:
                      return widget.countries[0].country;
                    case 1:
                      return widget.countries[1].country;
                    case 2:
                      return widget.countries[2].country;
                    case 3:
                      return widget.countries[3].country;
                    case 4:
                      return widget.countries[4].country;
                    default:
                      return '';
                  }
                },
              ),
              leftTitles: const SideTitles(showTitles: false),
            ),
            borderData: FlBorderData(
              show: false,
            ),
            barGroups: [
              BarChartGroupData(
                  x: 0,
                  barRods: [BarChartRodData(y: ((widget.countries[0].deaths / widget.countries[0].cases) * 100), color: Colors.lightBlueAccent)],
                  showingTooltipIndicators: [0]),
              BarChartGroupData(
                  x: 1,
                  barRods: [BarChartRodData(y: (widget.countries[1].deaths / widget.countries[1].cases) * 100, color: Colors.lightBlueAccent)],
                  showingTooltipIndicators: [0]),
              BarChartGroupData(
                  x: 2,
                  barRods: [BarChartRodData(y: (widget.countries[2].deaths / widget.countries[2].cases) * 100, color: Colors.lightBlueAccent)],
                  showingTooltipIndicators: [0]),
              BarChartGroupData(
                  x: 3,
                  barRods: [BarChartRodData(y: (widget.countries[3].deaths / widget.countries[3].cases) * 100, color: Colors.lightBlueAccent)],
                  showingTooltipIndicators: [0]),
              BarChartGroupData(
                  x: 4,
                  barRods: [BarChartRodData(y: (widget.countries[4].deaths / widget.countries[4].cases) * 100, color: Colors.lightBlueAccent)],
                  showingTooltipIndicators: [0]),
          
            ],
          ),
        ),
      ),
    );
  }
}