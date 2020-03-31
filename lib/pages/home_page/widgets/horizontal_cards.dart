import 'package:corona_tracker/pages/home_page/widgets/countries_card.dart';
import 'package:flutter/material.dart';

class ListCountriesData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      // This next line does the trick.
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        CountriesCard(),
        SizedBox(width: 25), 
        CountriesCard(),
        SizedBox(width: 25),
        CountriesCard(),
        SizedBox(width: 25),
        CountriesCard(),
        SizedBox(width: 25),
        CountriesCard(),
      ],
    );
  }
}
