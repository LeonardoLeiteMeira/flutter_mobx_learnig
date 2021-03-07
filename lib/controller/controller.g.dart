// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Controller on ControllerBase, Store {
  Computed<String> _$fullNameComputed;

  @override
  String get fullName =>
      (_$fullNameComputed ??= Computed<String>(() => super.fullName,
              name: 'ControllerBase.fullName'))
          .value;

  final _$nameAtom = Atom(name: 'ControllerBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$lastNameAtom = Atom(name: 'ControllerBase.lastName');

  @override
  String get lastName {
    _$lastNameAtom.reportRead();
    return super.lastName;
  }

  @override
  set lastName(String value) {
    _$lastNameAtom.reportWrite(value, super.lastName, () {
      super.lastName = value;
    });
  }

  final _$emailAtom = Atom(name: 'ControllerBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$isSendingAtom = Atom(name: 'ControllerBase.isSending');

  @override
  bool get isSending {
    _$isSendingAtom.reportRead();
    return super.isSending;
  }

  @override
  set isSending(bool value) {
    _$isSendingAtom.reportWrite(value, super.isSending, () {
      super.isSending = value;
    });
  }

  final _$ControllerBaseActionController =
      ActionController(name: 'ControllerBase');

  @override
  dynamic setName(String newName) {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.setName');
    try {
      return super.setName(newName);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setLastName(String newLastName) {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.setLastName');
    try {
      return super.setLastName(newLastName);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setEmail(String newEmail) {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.setEmail');
    try {
      return super.setEmail(newEmail);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setIsSending(bool newSendingState) {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.setIsSending');
    try {
      return super.setIsSending(newSendingState);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
lastName: ${lastName},
email: ${email},
isSending: ${isSending},
fullName: ${fullName}
    ''';
  }
}
