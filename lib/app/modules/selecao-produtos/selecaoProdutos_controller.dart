import 'package:edahorta/app/enumerate/mercadorias_enum.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'selecaoProdutos_controller.g.dart';

class SelecaoProdutosController = _SelecaoProdutosControllerBase
    with _$SelecaoProdutosController;

abstract class _SelecaoProdutosControllerBase with Store {
  List<MercadoriasEnum> mercadorias = MercadoriasEnum.values;

  @action
  Future<void> selectMercadoria({MercadoriasEnum? mercadoria}) async {
    await Modular.to.pushNamed('/mercadoria', arguments: mercadoria);
  }
}
