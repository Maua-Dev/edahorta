import 'package:edahorta/app/shared/models/produto_model.dart';

abstract class IHomeRepository {
  Future<List<ProdutoModel>> getProduto();
  Future<List<ProdutoModel>> salvarDisponibilidade(
      int index, bool transformado);
}
