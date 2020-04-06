import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CountriesLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Theme.of(context).primaryColor,
        highlightColor: Theme.of(context).accentColor,
        child: Container(
          padding: EdgeInsets.all(15),
          alignment: Alignment.center,
          width: 170.0,
          decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.all(Radius.circular(35)),
          ),
        ));
  }
}
