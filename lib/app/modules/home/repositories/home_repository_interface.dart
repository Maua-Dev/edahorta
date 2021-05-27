import 'package:edahorta/app/shared/models/produto_model.dart';

abstract class IHomeRepository {
  Future<List<Produto>> getProduto();
  Future<bool> salvarDisponibilidade(int disponibilidade);
}
