// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on HomeControllerBase, Store {
  final _$disponibilidadeAtom =
      Atom(name: 'HomeControllerBase.disponibilidade');

  @override
  int get disponibilidade {
    _$disponibilidadeAtom.reportRead();
    return super.disponibilidade;
  }

  @override
  set disponibilidade(int value) {
    _$disponibilidadeAtom.reportWrite(value, super.disponibilidade, () {
      super.disponibilidade = value;
    });
  }

  final _$alterarDisponibilidadeAsyncAction =
      AsyncAction('HomeControllerBase.alterarDisponibilidade');

  @override
  Future<void> alterarDisponibilidade(int disponibilidade) {
    return _$alterarDisponibilidadeAsyncAction
        .run(() => super.alterarDisponibilidade(disponibilidade));
  }

  @override
  String toString() {
    return '''
disponibilidade: ${disponibilidade}
    ''';
  }
}
