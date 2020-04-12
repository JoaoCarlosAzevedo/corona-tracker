// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GlobalApiStore on _GlobalApiStoreBase, Store {
  Computed<StoreState> _$stateComputed;

  @override
  StoreState get state =>
      (_$stateComputed ??= Computed<StoreState>(() => super.state)).value;

  final _$globalDataAtom = Atom(name: '_GlobalApiStoreBase.globalData');

  @override
  Global get globalData {
    _$globalDataAtom.context.enforceReadPolicy(_$globalDataAtom);
    _$globalDataAtom.reportObserved();
    return super.globalData;
  }

  @override
  set globalData(Global value) {
    _$globalDataAtom.context.conditionallyRunInAction(() {
      super.globalData = value;
      _$globalDataAtom.reportChanged();
    }, _$globalDataAtom, name: '${_$globalDataAtom.name}_set');
  }

  final _$rankedCountriesAtom =
      Atom(name: '_GlobalApiStoreBase.rankedCountries');

  @override
  List<Country> get rankedCountries {
    _$rankedCountriesAtom.context.enforceReadPolicy(_$rankedCountriesAtom);
    _$rankedCountriesAtom.reportObserved();
    return super.rankedCountries;
  }

  @override
  set rankedCountries(List<Country> value) {
    _$rankedCountriesAtom.context.conditionallyRunInAction(() {
      super.rankedCountries = value;
      _$rankedCountriesAtom.reportChanged();
    }, _$rankedCountriesAtom, name: '${_$rankedCountriesAtom.name}_set');
  }

  final _$erroMessageAtom = Atom(name: '_GlobalApiStoreBase.erroMessage');

  @override
  String get erroMessage {
    _$erroMessageAtom.context.enforceReadPolicy(_$erroMessageAtom);
    _$erroMessageAtom.reportObserved();
    return super.erroMessage;
  }

  @override
  set erroMessage(String value) {
    _$erroMessageAtom.context.conditionallyRunInAction(() {
      super.erroMessage = value;
      _$erroMessageAtom.reportChanged();
    }, _$erroMessageAtom, name: '${_$erroMessageAtom.name}_set');
  }

  final _$globalDataFutureAtom =
      Atom(name: '_GlobalApiStoreBase.globalDataFuture');

  @override
  ObservableFuture<List<Country>> get globalDataFuture {
    _$globalDataFutureAtom.context.enforceReadPolicy(_$globalDataFutureAtom);
    _$globalDataFutureAtom.reportObserved();
    return super.globalDataFuture;
  }

  @override
  set globalDataFuture(ObservableFuture<List<Country>> value) {
    _$globalDataFutureAtom.context.conditionallyRunInAction(() {
      super.globalDataFuture = value;
      _$globalDataFutureAtom.reportChanged();
    }, _$globalDataFutureAtom, name: '${_$globalDataFutureAtom.name}_set');
  }

  final _$getGlobalDataAsyncAction = AsyncAction('getGlobalData');

  @override
  Future<dynamic> getGlobalData() {
    return _$getGlobalDataAsyncAction.run(() => super.getGlobalData());
  }

  @override
  String toString() {
    final string =
        'globalData: ${globalData.toString()},rankedCountries: ${rankedCountries.toString()},erroMessage: ${erroMessage.toString()},globalDataFuture: ${globalDataFuture.toString()},state: ${state.toString()}';
    return '{$string}';
  }
}
