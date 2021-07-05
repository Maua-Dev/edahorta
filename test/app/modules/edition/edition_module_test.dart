import 'package:edahorta/app/app_module.dart';
import 'package:edahorta/app/enumerate/mercadorias_enum.dart';
import 'package:edahorta/app/enumerate/tipo_venda_enum.dart';
import 'package:edahorta/app/modules/edition/edition_controller.dart';
import 'package:edahorta/app/shared/models/produto_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:edahorta/app/modules/edition/edition_module.dart';

void main() {
  setUpAll(() {
    initModule(AppModule(), initialModule: true);
    initModule(EditionModule());
  });

  test('[TEST] - passing args null and get in controller', () {
    Modular.to.pushNamed('/mercadoria',
        arguments: ProdutoModel(
            disponibilidade: true,
            mercadoria: MercadoriasEnum.Outro,
            preco: 0,
            tipoVenda: TipoVendaEnum.Unidade));
            
    var controller = Modular.get<EditionController>();
    expect(controller.produto.mercadoria, equals(MercadoriasEnum.Outro));
  });
}
