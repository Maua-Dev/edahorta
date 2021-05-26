import 'package:edahorta/app/modules/selecao-produtos/selecaoProdutos_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:edahorta/app/modules/selecao-produtos/selecaoProdutos_module.dart';

void main() {
  setUpAll(() {
    initModule(SelecaoProdutosModule());
  });
  test('[TEST] - instance controller', () {
    var controller = Modular.get<SelecaoProdutosController>();
    expect(controller, isInstanceOf<SelecaoProdutosController>());
  });
}
