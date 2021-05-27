import 'package:edahorta/app/enums/mercadorias_enum.dart';
import 'package:edahorta/app/enums/tipo_venda_enum.dart';
import 'package:edahorta/app/modules/interfaces/home_interface_repository.dart';
import 'package:edahorta/app/shared/models/produto_model.dart';

class HomeRepository implements IHomeRepository {
  List<Produto> produto = [
    Produto(
        mercadoria: Mercadorias.alface,
        tipoVenda: TipoVenda.maco,
        preco: 4.99,
        disponibilidade: true)
  ];

  @override
  List<Produto> getProduto() {
    return produto;
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
