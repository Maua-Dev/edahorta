import 'package:edahorta/app/enumerate/mercadorias_enum.dart';
import 'package:edahorta/app/enumerate/tipo_venda_enum.dart';
import 'package:edahorta/app/modules/home/repositories/home_repository_interface.dart';
import 'package:edahorta/app/shared/models/produto_model.dart';

class HomeRepository implements IHomeRepository {
  List<Produto> produto = [
    Produto(
        mercadoria: MercadoriasEnum.Alface,
        tipoVenda: TipoVenda.maco,
        preco: 4.99,
        disponibilidade: true),
    Produto(
        mercadoria: MercadoriasEnum.Brocolis,
        tipoVenda: TipoVenda.quilo,
        preco: 10.90,
        disponibilidade: true),
    Produto(
        mercadoria: MercadoriasEnum.Cenoura,
        tipoVenda: TipoVenda.porcao,
        preco: 99.99,
        disponibilidade: true),
  ];

  @override
  Future<List<Produto>> getProduto() async {
    return Future.value(produto);
  }

  @override
  Future<List<Produto>> salvarDisponibilidade(
      int index, bool transformado, List<Produto> produtos) async {
    var produtoAlterado = produtos[index];
    produtos.remove(index);
    produtos.insert(
        index,
        Produto(
            mercadoria: produtoAlterado.mercadoria,
            tipoVenda: produtoAlterado.tipoVenda,
            preco: produtoAlterado.preco,
            disponibilidade: transformado));
    return Future.value(produtos);
  }
}
