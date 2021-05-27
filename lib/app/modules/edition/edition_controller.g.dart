// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edition_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EditionController on _EditionControllerBase, Store {
  final _$valueAtom = Atom(name: '_EditionControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_EditionControllerBaseActionController =
      ActionController(name: '_EditionControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_EditionControllerBaseActionController.startAction(
        name: '_EditionControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_EditionControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
