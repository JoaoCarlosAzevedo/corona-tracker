import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ChartCardLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Theme.of(context).primaryColor,
      highlightColor: Theme.of(context).accentColor,
      child: Container(
        height: 200,
        //padding: EdgeInsets.all(5),
        decoration: BoxDecoration( 
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.all(Radius.circular(35)),
        ),
      ), 
    );
  }
}
