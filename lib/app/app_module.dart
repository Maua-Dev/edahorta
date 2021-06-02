import 'package:edahorta/app/modules/selecao-produtos/selecaoProdutos_module.dart';
import 'package:edahorta/app/shared/splash_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(
      '/selecaoProdutos',
      module: SelecaoProdutosModule(),
    ),
    ChildRoute('/', child: (_, args) => SplashScreen()),
  ];
}
