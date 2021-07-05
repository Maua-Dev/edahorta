import 'package:edahorta/app/enumerate/mercadorias_enum.dart';
import 'package:edahorta/app/enumerate/tipo_venda_enum.dart';
import 'package:edahorta/app/shared/models/produto_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'selecaoProdutos_controller.g.dart';

class SelecaoProdutosController = _SelecaoProdutosControllerBase
    with _$SelecaoProdutosController;

abstract class _SelecaoProdutosControllerBase with Store {
  List<MercadoriasEnum> mercadorias = MercadoriasEnum.values
      .where((element) => element != MercadoriasEnum.Outro)
      .toList();

  @action
  Future<void> selectMercadoria({MercadoriasEnum? mercadoria}) async {
    var produto = mercadoria != null
        ? ProdutoModel(
            mercadoria: mercadoria,
            tipoVenda: TipoVendaEnum.Unidade,
            preco: 0,
            disponibilidade: true)
        : null;

    await Modular.to.pushNamed('/mercadoria', arguments: produto);
  }
}
