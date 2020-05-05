import 'package:flutter/material.dart';

class CountryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
       borderRadius: BorderRadius.all(Radius.circular(20)),
       color: Colors.white
      ),
    );
  }
}