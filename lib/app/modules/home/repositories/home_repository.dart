import 'package:edahorta/app/enumerate/mercadorias_enum.dart';
import 'package:edahorta/app/enumerate/tipo_venda_enum.dart';
import 'package:edahorta/app/modules/home/repositories/home_repository_interface.dart';
import 'package:edahorta/app/shared/models/produto_model.dart';

class HomeRepository implements IHomeRepository {
  List<ProdutoModel> produto = [
    ProdutoModel(
        mercadoria: MercadoriasEnum.Alface,
        tipoVenda: TipoVendaEnum.Maco,
        preco: 4.99,
        disponibilidade: true),
    ProdutoModel(
        mercadoria: MercadoriasEnum.Brocolis,
        tipoVenda: TipoVendaEnum.Quilo,
        preco: 10.90,
        disponibilidade: true),
    ProdutoModel(
        mercadoria: MercadoriasEnum.Cenoura,
        tipoVenda: TipoVendaEnum.Porcao,
        preco: 99.99,
        disponibilidade: true),
    ProdutoModel(
        mercadoria: MercadoriasEnum.Cenoura,
        tipoVenda: TipoVendaEnum.Porcao,
        preco: 99.99,
        disponibilidade: true),
    ProdutoModel(
        mercadoria: MercadoriasEnum.Cenoura,
        tipoVenda: TipoVendaEnum.Porcao,
        preco: 99.99,
        disponibilidade: true),
    ProdutoModel(
        mercadoria: MercadoriasEnum.Cenoura,
        tipoVenda: TipoVendaEnum.Porcao,
        preco: 99.99,
        disponibilidade: true),
    ProdutoModel(
        mercadoria: MercadoriasEnum.Cenoura,
        tipoVenda: TipoVendaEnum.Porcao,
        preco: 99.99,
        disponibilidade: true),
  ];

  @override
  Future<List<ProdutoModel>> getProduto() async {
    return Future.value(produto);
  }

  @override
  Future<List<ProdutoModel>> salvarDisponibilidade(
      int index, bool transformado) async {
    var produtoAlterado = produto[index];
    produto.removeAt(index);
    produto.insert(
        index,
        ProdutoModel(
            mercadoria: produtoAlterado.mercadoria,
            tipoVenda: produtoAlterado.tipoVenda,
            preco: produtoAlterado.preco,
            disponibilidade: transformado));
    return getProduto();
  }
}
