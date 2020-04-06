import 'package:corona_tracker/models/country.dart';
import 'package:corona_tracker/pages/home_page/widgets/countries_card.dart';
import 'package:flutter/material.dart';

class ListCountriesData extends StatelessWidget {
  final List<Country> topCountries;
  ListCountriesData(this.topCountries);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: topCountries.length,
      itemBuilder: (BuildContext context, int index) {
        return Row(children: <Widget>[
          CountriesCard(topCountries[index]),
          SizedBox(width: 30), 
        ],);
      }
    );
  }
}


/*
<Widget>[
        CountriesCard(),
        SizedBox(width: 30), 
        CountriesCard(),
        SizedBox(width: 30),
        CountriesCard(),
        SizedBox(width: 30),
        CountriesCard(),
        SizedBox(width: 30),
        CountriesCard(),
*/