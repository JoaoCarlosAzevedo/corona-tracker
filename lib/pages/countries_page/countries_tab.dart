import 'package:corona_tracker/pages/countries_page/widgets/country_card.dart';
import 'package:corona_tracker/pages/home_page/widgets/loading_page.dart';
import 'package:corona_tracker/stores/global_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CountriesTab extends StatelessWidget {
  GlobalApiStore _globalDataStore;
  CountriesTab(this._globalDataStore);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Observer(
        builder: (_) {
          switch (_globalDataStore.state) {
            case StoreState.initial:
              return Center(
                child: Text("Initial State",
                    style: TextStyle(color: Colors.white)),
              );
            case StoreState.loading:
              return LoadingPage();
            case StoreState.loaded:
              return ListView.builder(
                  itemCount: _globalDataStore.rankedCountries.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        CountryCard(_globalDataStore.rankedCountries[index]),
                        SizedBox(height: 10,)
                      ],
                    );
                  }); //
            case StoreState.error:
              return Center(
                child: Text("Erro na API $_globalDataStore.erroMessage",
                    style: TextStyle(color: Colors.white)),
              );
            default:
              {
                return Text("Algum erro $_globalDataStore.erroMessage",
                    style: TextStyle(color: Colors.white));
              }
          }
        },
      ),
    );
  }
}
