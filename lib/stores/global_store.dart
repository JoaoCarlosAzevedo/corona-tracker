import 'package:corona_tracker/models/country.dart';
import 'package:corona_tracker/repositories/countries_repository.dart';
import 'package:mobx/mobx.dart';

part 'global_store.g.dart';

enum StoreState {initial,loading,loaded}

class GlobalApiStore = _GlobalApiStoreBase with _$GlobalApiStore;

abstract class _GlobalApiStoreBase with Store {
  final CountriesRepository _globalRepository;
 
  _GlobalApiStoreBase(this._globalRepository);
 
  @observable
  Country globalData; 

  @observable
  List<Country> rankedCountries; 

  @observable
  String erroMessage;
 
  @observable 
  ObservableFuture<List<Country>> globalDataFuture;

  @computed
  StoreState get state {
    if (globalDataFuture == null || globalDataFuture.status == FutureStatus.rejected) {
      return StoreState.initial; 
    } 
    return globalDataFuture.status == FutureStatus.pending ? StoreState.loading : StoreState.loaded;
      
    }  
  
  @action
  Future getGlobalData() async {
    try{
      erroMessage = null;
      globalDataFuture =  ObservableFuture(_globalRepository.fetchAllCountries());  
      var countries   = await globalDataFuture; 
      globalData      = countries.firstWhere((index)=>index.country.contains('World'));
      countries.sort((a,b) => b.cases.compareTo(a.cases));
      rankedCountries = countries.skip(1).take(10).toList();
    }catch(error) {
      erroMessage = error; 
    }
  }
}