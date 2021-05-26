// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selecaoProdutos_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SelecaoProdutosController on _SelecaoProdutosControllerBase, Store {
  final _$mercadoriasAtom =
      Atom(name: '_SelecaoProdutosControllerBase.mercadorias');

  @override
  List<MercadoriasEnum> get mercadorias {
    _$mercadoriasAtom.reportRead();
    return super.mercadorias;
  }

  @override
  set mercadorias(List<MercadoriasEnum> value) {
    _$mercadoriasAtom.reportWrite(value, super.mercadorias, () {
      super.mercadorias = value;
    });
  }

  final _$selectMercadoriaAsyncAction =
      AsyncAction('_SelecaoProdutosControllerBase.selectMercadoria');

  @override
  Future<void> selectMercadoria({MercadoriasEnum? mercadoria}) {
    return _$selectMercadoriaAsyncAction
        .run(() => super.selectMercadoria(mercadoria: mercadoria));
  }

  @override
  String toString() {
    return '''
mercadorias: ${mercadorias}
    ''';
  }
}
