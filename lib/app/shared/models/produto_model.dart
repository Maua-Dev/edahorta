import 'package:edahorta/app/enumerate/mercadorias_enum.dart';
import 'package:edahorta/app/enumerate/tipo_venda_enum.dart';

class Produto {
  final MercadoriasEnum mercadoria;
  final TipoVenda tipoVenda;
  final double preco;
  final bool disponibilidade;

  Produto(
      {required this.mercadoria,
      required this.tipoVenda,
      required this.preco,
      required this.disponibilidade});
}
