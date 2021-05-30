import 'package:edahorta/app/modules/home/repositories/home_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  var homeRepository = HomeRepository();

  test('[TEST] - getProduto', () {
    expect(homeRepository.produto, isNotEmpty);
  });

  test('[TEST] - salvarDisponibilidade', () async {
    await homeRepository.salvarDisponibilidade(1, false);
    var len = homeRepository.produto.length;
    expect(homeRepository.produto[1].disponibilidade, false);
    expect(homeRepository.produto.length, len);
  });
}
