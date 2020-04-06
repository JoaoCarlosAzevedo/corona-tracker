import 'package:corona_tracker/stores/global_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomFloatButtom extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
        side: BorderSide(
          color:Theme.of(context).primaryColor,
          width: 15,
        )
      ),
      child: Icon(
          Icons.search,
          color: Colors.white,
          size: 50,
        ),
      onPressed: () {
        final globaDataStore = Provider.of<GlobalApiStore>(context, listen: false);
        globaDataStore.getGlobalData();
      },
    ); 
  }
}
