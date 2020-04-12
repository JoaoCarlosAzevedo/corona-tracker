import 'package:corona_tracker/models/global.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';


class PieChartSample2 extends StatefulWidget {
  final Global globalData;

  PieChartSample2(this.globalData);

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State<PieChartSample2> {
  int touchedIndex;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3, 
      child: Card(
        elevation: 0,
        color: Theme.of(context).accentColor,
        child: Row(
          children: <Widget>[
            Expanded(
              child: AspectRatio(
                aspectRatio: 1,
                child: PieChart(
                  PieChartData(
                      pieTouchData: PieTouchData(touchCallback: (pieTouchResponse) {
                        setState(() {
                          if (pieTouchResponse.touchInput is FlLongPressEnd ||
                              pieTouchResponse.touchInput is FlPanEnd) {
                            touchedIndex = -1;
                          } else {
                            touchedIndex = pieTouchResponse.touchedSectionIndex;
                          }
                        });
                      }),
                      borderData: FlBorderData(
                        show: false,
                      ),
                      sectionsSpace: 10,
                      centerSpaceRadius: 40,
                      sections: showingSections(widget.globalData),),
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections(Global globalData) {
    double death    = (globalData.deaths    / globalData.cases) * 100;
    double recoverd = (globalData.recovered / globalData.cases) * 100; 

    return List.generate(2, (i) {
      final isTouched = false;//i == touchedIndex;
      final double fontSize = isTouched ? 25 : 15;
      final double radius = isTouched ? 60 : 50;
      switch (i) {  
        case 0:
          return PieChartSectionData(
            color: Colors.red.shade400, //const Color(0xff0293ee),
            value: death,
            title: '${death.toStringAsFixed(2)}%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: Colors.white),
          );
        case 1:
          return PieChartSectionData(
            color: Colors.green.shade500,//const Color(0xff845bef),
            value: recoverd,
            title: '${recoverd.toStringAsFixed(2)}%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: Colors.white),
          );
        default:
          return null;
      }
    });
  }
}