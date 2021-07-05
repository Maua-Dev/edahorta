import 'package:edahorta/app/enumerate/mercadorias_enum.dart';
import 'package:edahorta/app/enumerate/tipo_venda_enum.dart';
import 'package:edahorta/app/shared/models/produto_model.dart';
import 'package:extended_masked_text/extended_masked_text.dart';

import 'package:mobx/mobx.dart';

import 'repositories/edition_repository_interface.dart';

part 'edition_controller.g.dart';

class EditionController = _EditionControllerBase with _$EditionController;

abstract class _EditionControllerBase with Store {
  final textController =
      MoneyMaskedTextController(leftSymbol: 'R\$ ', initialValue: 0);
  final IEditionRepository repository;
  @observable
  ProdutoModel produto = ProdutoModel(
      disponibilidade: true,
      mercadoria: MercadoriasEnum.Outro,
      preco: 0,
      tipoVenda: TipoVendaEnum.Unidade);

  _EditionControllerBase(ProdutoModel? value, {required this.repository}) {
    if (value != null) {
      produto = value;
      textController.updateValue(produto.preco);
    }
  }

  @action
  void alterarPreco(double preco) {
    produto = produto.copyWith(preco: preco);
  }

  @action
  void alterarTipoVenda(TipoVendaEnum tipoVenda) {
    produto = produto.copyWith(tipoVenda: tipoVenda);
  }

  @action
  Future<void> salvarProduto() async {
    produto = await repository.salvarProduto(produto);
  }
}
