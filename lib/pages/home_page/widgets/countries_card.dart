import 'package:flutter/material.dart';

class CountriesCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.0,
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.all(Radius.circular(35)),
      ),
    );
  }
}
