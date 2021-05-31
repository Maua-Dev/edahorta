import 'package:edahorta/app/modules/edition/edition_Page.dart';
import 'package:edahorta/app/modules/edition/edition_controller.dart';
import 'package:edahorta/app/modules/edition/repositories/edition_repository.dart';
import 'package:edahorta/app/shared/models/produto_model.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'repositories/edition_repository_interface.dart';

class EditionModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => EditionController(i(), i.args!.data as Produto)),
    Bind.lazySingleton<IEditionRepository>((i) => EditionRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => EditionPage()),
  ];
}
