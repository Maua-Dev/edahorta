import 'package:edahorta/app/enumerate/mercadorias_enum.dart';
import 'package:edahorta/app/enumerate/tipo_venda_enum.dart';
import 'package:edahorta/app/modules/home/repositories/home_repository_interface.dart';
import 'package:edahorta/app/shared/models/produto_model.dart';

class HomeRepository implements IHomeRepository {
  List<Produto> produto = [
    Produto(
        mercadoria: MercadoriasEnum.Alface,
        tipoVenda: TipoVenda.maco,
        preco: 4.99,
        disponibilidade: true)
  ];

  @override
  Future<List<Produto>> getProduto() async {
    return Future.value(produto);
  }

  @override
  Future<bool> salvarDisponibilidade(int disponibilidade) async {
    if (disponibilidade == 0) {
      return false;
    } else {
      return true;
    }
  }
}
