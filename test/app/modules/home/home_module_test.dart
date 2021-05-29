import 'package:edahorta/app/app_module.dart';
import 'package:edahorta/app/modules/home/home_controller.dart';
import 'package:edahorta/app/modules/home/home_module.dart';
import 'package:edahorta/app/modules/home/repositories/home_repository.dart';
import 'package:edahorta/app/shared/services/loading_service.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  initModules([AppModule(), HomeModule()]);

  test('Teste da injeção do HomeController', () {
    var homeController = Modular.get<HomeController>();
    expect(homeController.loadingService, isInstanceOf<LoadingService>());
  });

  test('Teste da injeção do HomeRepository', () {
    Modular.get<HomeRepository>();
  });
}
