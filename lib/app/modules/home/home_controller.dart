import 'package:mobx/mobx.dart';

import 'home_repository.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  final repository = HomeRepository();
  HomeControllerBase() {
    repository.getProduto();
  }

  @observable
  int disponibilidade = 0;

  @action
  Future<void> alterarDisponibilidade(int disponibilidade) async {
    await repository.salvarDisponibilidade(disponibilidade);
  }
}
