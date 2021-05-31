// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edition_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EditionController on _EditionControllerBase, Store {
  final _$produtoAtom = Atom(name: '_EditionControllerBase.produto');

  @override
  Produto get produto {
    _$produtoAtom.reportRead();
    return super.produto;
  }

  @override
  set produto(Produto value) {
    _$produtoAtom.reportWrite(value, super.produto, () {
      super.produto = value;
    });
  }

  final _$salvarProdutoAsyncAction =
      AsyncAction('_EditionControllerBase.salvarProduto');

  @override
  Future<void> salvarProduto() {
    return _$salvarProdutoAsyncAction.run(() => super.salvarProduto());
  }

  final _$_EditionControllerBaseActionController =
      ActionController(name: '_EditionControllerBase');

  @override
  void alterarPreco(double preco) {
    final _$actionInfo = _$_EditionControllerBaseActionController.startAction(
        name: '_EditionControllerBase.alterarPreco');
    try {
      return super.alterarPreco(preco);
    } finally {
      _$_EditionControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void alterarTipoVenda(TipoVendaEnum tipoVenda) {
    final _$actionInfo = _$_EditionControllerBaseActionController.startAction(
        name: '_EditionControllerBase.alterarTipoVenda');
    try {
      return super.alterarTipoVenda(tipoVenda);
    } finally {
      _$_EditionControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
produto: ${produto}
    ''';
  }
}
