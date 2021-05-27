import 'package:edahorta/app/modules/edition/edition_Page.dart';
import 'package:edahorta/app/modules/edition/edition_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class EditionModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => EditionController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => EditionPage()),
  ];
}
