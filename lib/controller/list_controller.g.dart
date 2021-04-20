// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListItemController on ListItemControllerBase, Store {
  Computed<ObservableList<ItemModel?>?>? _$listItemFilteredComputed;

  @override
  ObservableList<ItemModel?>? get listItemFiltered =>
      (_$listItemFilteredComputed ??= Computed<ObservableList<ItemModel?>?>(
              () => super.listItemFiltered,
              name: 'ListItemControllerBase.listItemFiltered'))
          .value;
  Computed<int>? _$totalSelectedComputed;

  @override
  int get totalSelected =>
      (_$totalSelectedComputed ??= Computed<int>(() => super.totalSelected,
              name: 'ListItemControllerBase.totalSelected'))
          .value;

  final _$listItemAtom = Atom(name: 'ListItemControllerBase.listItem');

  @override
  ObservableList<ItemModel> get listItem {
    _$listItemAtom.reportRead();
    return super.listItem;
  }

  @override
  set listItem(ObservableList<ItemModel> value) {
    _$listItemAtom.reportWrite(value, super.listItem, () {
      super.listItem = value;
    });
  }

  final _$_filterAtom = Atom(name: 'ListItemControllerBase._filter');

  @override
  String get _filter {
    _$_filterAtom.reportRead();
    return super._filter;
  }

  @override
  set _filter(String value) {
    _$_filterAtom.reportWrite(value, super._filter, () {
      super._filter = value;
    });
  }

  final _$ListItemControllerBaseActionController =
      ActionController(name: 'ListItemControllerBase');

  @override
  dynamic setListItem(List<ItemModel> newListItem) {
    final _$actionInfo = _$ListItemControllerBaseActionController.startAction(
        name: 'ListItemControllerBase.setListItem');
    try {
      return super.setListItem(newListItem);
    } finally {
      _$ListItemControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addItem(ItemModel newItem) {
    final _$actionInfo = _$ListItemControllerBaseActionController.startAction(
        name: 'ListItemControllerBase.addItem');
    try {
      return super.addItem(newItem);
    } finally {
      _$ListItemControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeItem(ItemModel removeItem) {
    final _$actionInfo = _$ListItemControllerBaseActionController.startAction(
        name: 'ListItemControllerBase.removeItem');
    try {
      return super.removeItem(removeItem);
    } finally {
      _$ListItemControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setFilter(String newFilter) {
    final _$actionInfo = _$ListItemControllerBaseActionController.startAction(
        name: 'ListItemControllerBase.setFilter');
    try {
      return super.setFilter(newFilter);
    } finally {
      _$ListItemControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listItem: ${listItem},
listItemFiltered: ${listItemFiltered},
totalSelected: ${totalSelected}
    ''';
  }
}
