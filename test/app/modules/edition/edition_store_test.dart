import 'dart:math';

import 'package:edahorta/app/enumerate/mercadorias_enum.dart';
import 'package:edahorta/app/enumerate/tipo_venda_enum.dart';
import 'package:edahorta/app/modules/edition/repositories/edition_repository_interface.dart';
import 'package:edahorta/app/shared/models/produto_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:edahorta/app/modules/edition/edition_controller.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'edition_store_test.mocks.dart';

@GenerateMocks([IEditionRepository])
void main() {
  var produto = Produto(
      mercadoria: MercadoriasEnum.Batata,
      tipoVenda: TipoVendaEnum.Quilo,
      preco: 12,
      disponibilidade: true);
  var repository = MockIEditionRepository();

  late EditionController store;

  setUpAll(() {
    store = EditionController(produto: produto, repository: repository);
  });

  test('teste alteraçao de preço', () async {
    expect(store.produto.preco, equals(12));
    store.alterarPreco(6);
    expect(store.produto.preco, equals(6));
  });

  test('teste alterar tipo de venda', () async {
    expect(store.produto.tipoVenda, equals(TipoVendaEnum.Quilo));
    store.alterarTipoVenda(TipoVendaEnum.Unidade);
    expect(store.produto.tipoVenda, equals(TipoVendaEnum.Unidade));
  });

  test('salvar produto', () async {
    var retorno = Produto(
        mercadoria: MercadoriasEnum.Batata,
        tipoVenda: TipoVendaEnum.Maco,
        preco: 8,
        disponibilidade: true);
    when(repository.salvarProduto(produto)).thenAnswer((_) async => retorno);
    await store.salvarProduto();
    expect(store.produto, retorno);
  });
}
