// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GlobalApiStore on _GlobalApiStoreBase, Store {
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

  final _$_GlobalApiStoreBaseActionController =
      ActionController(name: '_GlobalApiStoreBase');

  @override
  dynamic fechGlobalData() {
    final _$actionInfo = _$_GlobalApiStoreBaseActionController.startAction();
    try {
      return super.fechGlobalData();
    } finally {
      _$_GlobalApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'globalData: ${globalData.toString()}';
    return '{$string}';
  }
}
