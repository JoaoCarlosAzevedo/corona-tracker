import 'package:corona_tracker/models/country.dart';
import 'package:corona_tracker/models/global.dart';
import 'package:corona_tracker/repositories/countries_repository.dart';
import 'package:mobx/mobx.dart';

part 'global_store.g.dart';

enum StoreState { initial, loading, loaded }

class GlobalApiStore = _GlobalApiStoreBase with _$GlobalApiStore;

abstract class _GlobalApiStoreBase with Store {
  final CountriesRepository _globalRepository;

  _GlobalApiStoreBase(this._globalRepository);

  @observable
  Global globalData;

  @observable
  List<Country> rankedCountries;

  @observable
  String erroMessage;

  @observable
  ObservableFuture<List<Country>> globalDataFuture;

  @observable
  ObservableFuture<Global> globalFuture;

  @computed
  StoreState get state {
    if (globalDataFuture == null ||
        globalDataFuture.status == FutureStatus.rejected) {
        return StoreState.initial;
    }
    if (globalDataFuture.status == FutureStatus.pending) {   
        return StoreState.loading; 
    } 
    if (globalFuture.status == FutureStatus.fulfilled) {
      return StoreState.loaded;
    } 
  }

  @action
  Future getGlobalData() async {
    try {
      erroMessage = null;
      globalDataFuture =
          ObservableFuture(_globalRepository.fetchAllCountries());
      globalFuture = ObservableFuture(_globalRepository.fetchGlobalData());
      globalData = await globalFuture;
      var countries = await globalDataFuture;
      countries.sort((a, b) => b.cases.compareTo(a.cases));
      rankedCountries = countries.take(10).toList();
    } catch (error) {
      erroMessage = error;
    }
  }
}
