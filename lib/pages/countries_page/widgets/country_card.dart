import 'package:cached_network_image/cached_network_image.dart';
import 'package:corona_tracker/models/country.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CountryCard extends StatelessWidget {
  final Country country;

  CountryCard(this.country);

  @override
  Widget build(BuildContext context) {
    var numberMask = NumberFormat("###,###,###,###", "pt_BR");

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
              //Icon(Icons.pin_drop, color: Colors.white,),
              Container(
                width: 30,
                height: 30,
                child: CachedNetworkImage(
                  placeholder: (context, url) => CircularProgressIndicator(),
                  imageUrl: country.countryInfo.flag,
                ),
              ),
              Text(country.country,
                  style: Theme.of(context).textTheme.headline),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Casos",
                style: Theme.of(context).textTheme.title,
                textScaleFactor: 0.70,
              ),
              Text(
                numberMask.format(country.cases),
                style: Theme.of(context).textTheme.display1,
                textScaleFactor: 0.60,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Mortes",
                style: Theme.of(context).textTheme.title,
                textScaleFactor: 0.70,
              ),
              Text(
                numberMask.format(country.deaths),
                style: Theme.of(context).textTheme.display2,
                textScaleFactor: 0.50,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Recup.",
                style: Theme.of(context).textTheme.title,
                textScaleFactor: 0.70,
              ),
              Text(
                numberMask.format(country.recovered),
                style: Theme.of(context).textTheme.display3,
                textScaleFactor: 0.50,
              ),
            ],
          )
        ],
      ),
    );
  }
}
