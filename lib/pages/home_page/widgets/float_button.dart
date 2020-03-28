import 'package:flutter/material.dart';

class CustomFloatButtom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
        side: BorderSide(
          color:Theme.of(context).primaryColor,
          width: 15,
        )
      ),
      child: Icon(
          Icons.search,
          color: Colors.white,
          size: 50,
        ),
      onPressed: () {},
    );
  }
}
