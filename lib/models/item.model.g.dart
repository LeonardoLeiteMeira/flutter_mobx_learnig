// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ItemModel on ItemModelBase, Store {
  final _$titleAtom = Atom(name: 'ItemModelBase.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$checkAtom = Atom(name: 'ItemModelBase.check');

  @override
  bool get check {
    _$checkAtom.reportRead();
    return super.check;
  }

  @override
  set check(bool value) {
    _$checkAtom.reportWrite(value, super.check, () {
      super.check = value;
    });
  }

  final _$ItemModelBaseActionController =
      ActionController(name: 'ItemModelBase');

  @override
  dynamic setTitle(String newTitle) {
    final _$actionInfo = _$ItemModelBaseActionController.startAction(
        name: 'ItemModelBase.setTitle');
    try {
      return super.setTitle(newTitle);
    } finally {
      _$ItemModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool? setCheck(bool newCheck) {
    final _$actionInfo = _$ItemModelBaseActionController.startAction(
        name: 'ItemModelBase.setCheck');
    try {
      return super.setCheck(newCheck);
    } finally {
      _$ItemModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
check: ${check}
    ''';
  }
}
