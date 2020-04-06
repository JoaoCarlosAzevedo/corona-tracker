import 'package:corona_tracker/models/country.dart';
import 'package:flutter/material.dart';

class CountriesCard extends StatelessWidget {
  final Country country;

  CountriesCard(this.country);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      alignment: Alignment.center,
      width: 170.0, 
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.all(Radius.circular(35)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(Icons.pin_drop, color: Colors.white,),
              Text(country.country, style: Theme.of(context).textTheme.headline),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Casos", style: Theme.of(context).textTheme.title,textScaleFactor: 0.70,),
              Text("${country.cases.toString()}", style: Theme.of(context).textTheme.display1,textScaleFactor: 0.60,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Mortes", style: Theme.of(context).textTheme.title,textScaleFactor: 0.70,),
              Text("${country.deaths.toString()}", style: Theme.of(context).textTheme.display2,textScaleFactor: 0.50,),
            ],
          ), 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Recup.", style: Theme.of(context).textTheme.title,textScaleFactor: 0.70,),
              Text("${country.recovered.toString()}", style: Theme.of(context).textTheme.display3,textScaleFactor: 0.50,),
            ],
          )
        ],
      ),
    );
  }
}
