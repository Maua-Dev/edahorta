import 'package:edahorta/app/modules/selecao-produtos/selecaoProdutos_Page.dart';
import 'package:edahorta/app/modules/selecao-produtos/selecaoProdutos_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SelecaoProdutosModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SelecaoProdutosController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SelecaoProdutosPage()),
  ];
}
