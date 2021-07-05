// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on HomeControllerBase, Store {
  final _$produtoAtom = Atom(name: 'HomeControllerBase.produto');

  @override
  List<ProdutoModel> get produto {
    _$produtoAtom.reportRead();
    return super.produto;
  }

  @override
  set produto(List<ProdutoModel> value) {
    _$produtoAtom.reportWrite(value, super.produto, () {
      super.produto = value;
    });
  }

  final _$getListaProdutosAsyncAction =
      AsyncAction('HomeControllerBase.getListaProdutos');

  @override
  Future<void> getListaProdutos() {
    return _$getListaProdutosAsyncAction.run(() => super.getListaProdutos());
  }

  final _$trocarDisponibilidadeAsyncAction =
      AsyncAction('HomeControllerBase.trocarDisponibilidade');

  @override
  Future<void> trocarDisponibilidade(int index, bool value) {
    return _$trocarDisponibilidadeAsyncAction
        .run(() => super.trocarDisponibilidade(index, value));
  }

  @override
  String toString() {
    return '''
produto: ${produto}
    ''';
  }
}
