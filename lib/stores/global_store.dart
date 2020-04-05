import 'package:corona_tracker/models/global.dart';
import 'package:mobx/mobx.dart';

part 'global_store.g.dart';

class GlobalApiStore = _GlobalApiStoreBase with _$GlobalApiStore;

abstract class _GlobalApiStoreBase with Store {

  @observable
  Global globalData;

  @action
  fechGlobalData() {
    

  }
  
}