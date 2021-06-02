import 'package:edahorta/app/modules/home/repositories/home_repository_interface.dart';
import 'package:edahorta/app/shared/models/produto_model.dart';
import 'package:edahorta/app/shared/services/loading_service.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  final IHomeRepository repository;
  final LoadingService loadingService;

  HomeControllerBase(this.repository, this.loadingService) {
    getListaProdutos();
  }

  @observable
  List<Produto> produto = [];

  @action
  Future<void> getListaProdutos() async {
    produto = await repository.getProduto();
  }

  @action
  Future<void> trocarDisponibilidade(int index, bool value) async {
    produto = await repository.salvarDisponibilidade(index, value);
  }

  // @action
  // Future<void> showLoading() async {
  //   loadingService.showLoading();
  //   await Future.delayed(Duration(seconds: 5));
  //   loadingService.dismissLoading();
  // }
}
