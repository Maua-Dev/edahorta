import 'package:edahorta/app/enumerate/mercadorias_enum.dart';

import 'package:flutter_modular/flutter_modular.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:edahorta/app/modules/selecao-produtos/selecaoProdutos_controller.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'selecaoProdutos_store_test.mocks.dart';

@GenerateMocks([IModularNavigator])
void main() {
  var navigatorMock = MockIModularNavigator();
  Modular.navigatorDelegate = navigatorMock;
  late SelecaoProdutosController controller;

  setUpAll(() {
    controller = SelecaoProdutosController();
    print(controller);
  });

  test('[TEST] - action selectMercadoria passing args', () async {
    var mercadoria = MercadoriasEnum.Cenoura;

    when(navigatorMock.pushNamed('/mercadoria',
            arguments: anyNamed('arguments')))
        .thenAnswer((_) async => {});

    await controller.selectMercadoria(mercadoria: mercadoria);
    verify(navigatorMock.pushNamed('/mercadoria',
            arguments: anyNamed('arguments')))
        .called(1);
  });
  test('[TEST] - observable lista mercadorias is enum values', () {
    expect(controller.mercadorias.length,
        equals(MercadoriasEnum.values.length - 1));
  });
}
