import 'package:edahorta/app/enumerate/mercadorias_enum.dart';
import 'package:edahorta/app/enumerate/tipo_venda_enum.dart';
import 'package:edahorta/app/modules/edition/repositories/edition_repository.dart';
import 'package:edahorta/app/shared/models/produto_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Teste Salvar Produto', () async {
    var produto = Produto(
        mercadoria: MercadoriasEnum.Alface,
        tipoVenda: TipoVendaEnum.Maco,
        preco: 2,
        disponibilidade: true);

    var repository = EditionRepository();
    await repository.salvarProduto(produto);
    expect(repository.produtos[0].preco, 2);
  });

  test('Teste Salvar Produto 2', () async {
    var produto = Produto(
        mercadoria: MercadoriasEnum.Brocolis,
        tipoVenda: TipoVendaEnum.Maco,
        preco: 2,
        disponibilidade: true);

    var repository = EditionRepository();
    await repository.salvarProduto(produto);
    expect(repository.produtos[1].preco, 2);
    expect(repository.produtos[1].tipoVenda, TipoVendaEnum.Maco);
  });
}
