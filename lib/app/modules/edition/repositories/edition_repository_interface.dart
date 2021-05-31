import 'package:edahorta/app/shared/models/produto_model.dart';

abstract class IEditionRepository {
  Future<Produto> salvarProduto(Produto produto);
}
