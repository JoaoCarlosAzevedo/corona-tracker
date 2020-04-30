import 'package:corona_tracker/pages/countries_page/countries_tab.dart';
import 'package:corona_tracker/pages/home_page/widgets/bottom_appbar.dart';
import 'package:corona_tracker/pages/home_page/widgets/loadDataWidgets.dart';
import 'package:corona_tracker/pages/home_page/widgets/loading_page.dart';
import 'package:corona_tracker/stores/global_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'home_page/home_tab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalApiStore _globalDataStore;
  int _currentPage;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _globalDataStore ??= Provider.of<GlobalApiStore>(context);
  }

  @override
  void initState() {
    _currentPage = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: getPage(_currentPage),
      floatingActionButton: FloatingActionButton(onPressed: () {
        final globaDataStore =
            Provider.of<GlobalApiStore>(context, listen: false);
        globaDataStore.getGlobalData();
      }),
      bottomNavigationBar: AnimatedBottomNav(
          currentIndex: _currentPage,
          onChange: (index) {
            setState(() {
              _currentPage = index;
            });
          }),
    );
  }

  getPage(int page) {
    switch (page) {
      case 0:
        return HomeTab(_globalDataStore);
      case 1:
        return CountriesTab();
      case 2:
        return Center(
            child: Container(
          child: Text("Menu Page"),
        ));
    }
  }

  Widget _mainPage() {
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

