import 'package:corona_tracker/pages/countries_page/widgets/country_card.dart';
import 'package:flutter/material.dart';

class CountriesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Wrap(
        //spacing: 20,
        runSpacing: 20,
         children: <Widget>[
           CountryCard(),
           CountryCard(),
           CountryCard(),
           CountryCard(),
           CountryCard(),
           CountryCard(),
         ],
      ),
    );
  }
}