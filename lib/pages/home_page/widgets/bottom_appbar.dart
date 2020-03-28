import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Theme.of(context).accentColor,
      child: Container(
        height: 30.0,
      ),
    );
  }
}
