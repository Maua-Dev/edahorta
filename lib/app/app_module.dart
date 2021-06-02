import 'package:edahorta/app/shared/services/loading_service.dart';
import 'package:edahorta/app/modules/selecao-produtos/selecaoProdutos_module.dart';
import 'package:edahorta/app/shared/splash_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [Bind.instance<LoadingService>(LoadingService())];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(
      '/',
      module: HomeModule(),
    ),
    ModuleRoute(
      '/selecaoProdutos',
      module: SelecaoProdutosModule(),
    ),
    ChildRoute('/', child: (_, args) => SplashScreen()),
  ];
}
