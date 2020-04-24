import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
class CustomBottomBar extends StatefulWidget {
  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
    index: 1,
    backgroundColor: Theme.of(context).primaryColor,
    height: 50,
    color: Theme.of(context).accentColor,
    animationDuration: Duration(milliseconds: 300),
    animationCurve: Curves.easeOutCubic,
    items: <Widget>[
      Icon(Icons.explore, size: 30, color: Colors.white,),
      Icon(Icons.public, size: 30, color: Colors.white),
      Icon(Icons.search, size: 30, color: Colors.white),
    ],
    onTap: (index) {
      //Handle button tap
      print(index);
    },
  );
  }
}
