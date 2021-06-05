import 'package:edahorta/app/enumerate/tipo_venda_enum.dart';
import 'package:edahorta/app/shared/models/produto_model.dart';
import 'package:extended_masked_text/extended_masked_text.dart';

import 'package:mobx/mobx.dart';

import 'repositories/edition_repository_interface.dart';

part 'edition_controller.g.dart';

class EditionController = _EditionControllerBase with _$EditionController;

abstract class _EditionControllerBase with Store {
  final textController = MoneyMaskedTextController(leftSymbol: 'R\$ ');
  final IEditionRepository repository;
  @observable
  Produto produto;

  _EditionControllerBase({required this.repository, required this.produto}) {
    textController.updateValue(produto.preco);
  }

  @action
  void alterarPreco(double preco) {
    produto = Produto(
        mercadoria: produto.mercadoria,
        tipoVenda: produto.tipoVenda,
        preco: preco,
        disponibilidade: produto.disponibilidade);
  }

  @action
  void alterarTipoVenda(TipoVendaEnum tipoVenda) {
    produto = Produto(
        mercadoria: produto.mercadoria,
        tipoVenda: tipoVenda,
        preco: produto.preco,
        disponibilidade: produto.disponibilidade);
  }

  @action
  Future<void> salvarProduto() async {
    produto = await repository.salvarProduto(produto);
  }
}
