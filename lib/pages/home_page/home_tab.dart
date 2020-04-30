import 'package:corona_tracker/pages/home_page/widgets/loadDataWidgets.dart';
import 'package:corona_tracker/pages/home_page/widgets/loading_page.dart';
import 'package:corona_tracker/stores/global_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeTab extends StatelessWidget {
  GlobalApiStore _globalDataStore;
  HomeTab(this._globalDataStore);


  @override
  Widget build(BuildContext context) { 
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Observer(
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
                      return LoadDataWidgets(_globalDataStore);
                    case StoreState.error:
                      return  Center(
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
            ],
          ),
        ),
      ),
    );
  }
}