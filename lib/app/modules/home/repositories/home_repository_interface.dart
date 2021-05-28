import 'package:edahorta/app/shared/models/produto_model.dart';

abstract class IHomeRepository {
  Future<List<Produto>> getProduto();
  Future<List<Produto>> salvarDisponibilidade(
      int index, bool transformado, List<Produto> produtos);
}
