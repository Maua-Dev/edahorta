import 'package:edahorta/app/enumerate/mercadorias_enum.dart';
import 'package:edahorta/app/enumerate/tipo_venda_enum.dart';
import 'package:edahorta/app/modules/home/home_controller.dart';
import 'package:edahorta/app/modules/home/repositories/home_repository_interface.dart';
import 'package:edahorta/app/shared/models/produto_model.dart';
import 'package:edahorta/app/shared/services/loading_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'home_controller_test.mocks.dart';

@GenerateMocks([IHomeRepository, LoadingService])
void main() {
  IHomeRepository repository = MockIHomeRepository();
  late HomeController homeController;
  var array = [
    Produto(
        mercadoria: MercadoriasEnum.Cenoura,
        tipoVenda: TipoVenda.porcao,
        preco: 99.99,
        disponibilidade: true),
  ];

  setUpAll(() {
    when(repository.getProduto()).thenAnswer((_) async => array);
    homeController = HomeController(repository, MockLoadingService());
  });

  test('Teste do getListaProduto', () async {
    expect(homeController.produto, array);
  });

  test('Teste do trocarDisponibilidade args true', () async {
    var retorno = [
      Produto(
          mercadoria: MercadoriasEnum.Cenoura,
          tipoVenda: TipoVenda.porcao,
          preco: 99.99,
          disponibilidade: true),
    ];
    when(repository.salvarDisponibilidade(0, true))
        .thenAnswer((_) async => retorno);
    await homeController.trocarDisponibilidade(0, true);
    expect(homeController.produto[0].disponibilidade, true);
    expect(homeController.produto, retorno);
  });
  test('Teste do trocarDisponibilidade args false', () async {
    var retorno = [
      Produto(
          mercadoria: MercadoriasEnum.Cenoura,
          tipoVenda: TipoVenda.porcao,
          preco: 99.99,
          disponibilidade: false),
    ];
    when(repository.salvarDisponibilidade(0, false))
        .thenAnswer((_) async => retorno);
    await homeController.trocarDisponibilidade(0, false);
    expect(homeController.produto[0].disponibilidade, false);
    expect(homeController.produto, retorno);
  });
  test('Teste do trocarDisponibilidade args hasCode Change', () async {
    var retorno = [
      Produto(
          mercadoria: MercadoriasEnum.Cenoura,
          tipoVenda: TipoVenda.porcao,
          preco: 99.99,
          disponibilidade: false),
    ];
    when(repository.salvarDisponibilidade(0, false))
        .thenAnswer((_) async => retorno);
    var listBefore = homeController.produto;
    await homeController.trocarDisponibilidade(0, false);
    print(listBefore.hashCode);
    expect(listBefore, isNot(homeController.produto));
    print(retorno.hashCode);
  });
}
