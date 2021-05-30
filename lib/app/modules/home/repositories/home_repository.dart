import 'package:edahorta/app/enumerate/mercadorias_enum.dart';
import 'package:edahorta/app/enumerate/tipo_venda_enum.dart';
import 'package:edahorta/app/modules/home/repositories/home_repository_interface.dart';
import 'package:edahorta/app/shared/models/produto_model.dart';

class HomeRepository implements IHomeRepository {
  List<Produto> produto = [
    Produto(
        mercadoria: MercadoriasEnum.Alface,
        tipoVenda: TipoVendaEnum.Maco,
        preco: 4.99,
        disponibilidade: true),
    Produto(
        mercadoria: MercadoriasEnum.Brocolis,
        tipoVenda: TipoVendaEnum.Quilo,
        preco: 10.90,
        disponibilidade: true),
    Produto(
        mercadoria: MercadoriasEnum.Cenoura,
        tipoVenda: TipoVendaEnum.Porcao,
        preco: 99.99,
        disponibilidade: true),
    Produto(
        mercadoria: MercadoriasEnum.Cenoura,
        tipoVenda: TipoVendaEnum.Porcao,
        preco: 99.99,
        disponibilidade: true),
    Produto(
        mercadoria: MercadoriasEnum.Cenoura,
        tipoVenda: TipoVendaEnum.Porcao,
        preco: 99.99,
        disponibilidade: true),
    Produto(
        mercadoria: MercadoriasEnum.Cenoura,
        tipoVenda: TipoVendaEnum.Porcao,
        preco: 99.99,
        disponibilidade: true),
    Produto(
        mercadoria: MercadoriasEnum.Cenoura,
        tipoVenda: TipoVendaEnum.Porcao,
        preco: 99.99,
        disponibilidade: true),
  ];

  @override
  Future<List<Produto>> getProduto() async {
    return Future.value(produto);
  }

  @override
  Future<List<Produto>> salvarDisponibilidade(
      int index, bool transformado) async {
    var produtoAlterado = produto[index];
    produto.removeAt(index);
    produto.insert(
        index,
        Produto(
            mercadoria: produtoAlterado.mercadoria,
            tipoVenda: produtoAlterado.tipoVenda,
            preco: produtoAlterado.preco,
            disponibilidade: transformado));
    return getProduto();
  }
}
