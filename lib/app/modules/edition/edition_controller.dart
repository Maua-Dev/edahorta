import 'package:mobx/mobx.dart';

part 'edition_controller.g.dart';

class EditionController = _EditionControllerBase with _$EditionController;

abstract class _EditionControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
