import 'package:edahorta/app/enumerate/mercadorias_enum.dart';
import 'package:edahorta/app/enumerate/tipo_venda_enum.dart';
import 'package:edahorta/app/modules/edition/repositories/edition_repository_interface.dart';
import 'package:edahorta/app/shared/models/produto_model.dart';

class EditionRepository implements IEditionRepository {
  List<Produto> produtos = [
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
  ];

  @override
  Future<Produto> salvarProduto(Produto produto) async {
    var produtoAlterado = produto;
    for (var i = 0; i < produtos.length; i++) {
      if (produtoAlterado.mercadoria == produtos[i].mercadoria) {
        produtos[i] = produtoAlterado;
      }
    }
    return produtoAlterado;
  }
}
