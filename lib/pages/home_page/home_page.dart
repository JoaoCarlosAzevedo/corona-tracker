import 'package:corona_tracker/pages/home_page/widgets/bottom_appbar.dart';
import 'package:corona_tracker/pages/home_page/widgets/float_button.dart';
import 'package:corona_tracker/pages/home_page/widgets/loadDataWidgets.dart';
import 'package:corona_tracker/pages/home_page/widgets/loading_page.dart';
import 'package:corona_tracker/stores/global_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalApiStore _globalDataStore;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _globalDataStore ??= Provider.of<GlobalApiStore>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Observer(
                  builder: (_) {
                    switch (_globalDataStore.state) {
                      case StoreState.initial:
                        return Text("Nada Aqui",
                            style: TextStyle(color: Colors.white));
                      case StoreState.loading:
                        return LoadingPage(); 
                      case StoreState.loaded:
                        return LoadDataWidgets(_globalDataStore);
                      default:
                        {
                          return Text("Algum erro",
                            style: TextStyle(color: Colors.white));
                        }
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomAppBar(),
      floatingActionButton: SizedBox(
        width: 100,
        height: 100,
        child: CustomFloatButtom(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
