import 'package:corona_tracker/pages/countries_page/countries_tab.dart';
import 'package:corona_tracker/pages/home_page/widgets/bottom_appbar.dart';
import 'package:corona_tracker/stores/global_store.dart';
import 'package:flutter/material.dart';
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
    final globaDataStore = Provider.of<GlobalApiStore>(context, listen: false);
    globaDataStore.getGlobalData();

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: RefreshIndicator(
        displacement: 0,
        child: getPage(_currentPage),
        onRefresh: _refreshPage,
      ),
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
        return CountriesTab(_globalDataStore);
      case 2:
        return Center(
            child: Container(
          child: Text("Menu Page"),
        ));
    }
  }

  Future<Null> _refreshPage() async {
    final globaDataStore = Provider.of<GlobalApiStore>(context, listen: false);
    await globaDataStore.getGlobalData();
    return null;
  }
}
