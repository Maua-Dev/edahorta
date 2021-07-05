import 'package:edahorta/app/enumerate/mercadorias_enum.dart';
import 'package:edahorta/app/enumerate/tipo_venda_enum.dart';
import 'package:intl/intl.dart';

class ProdutoModel {
  final MercadoriasEnum mercadoria;
  final TipoVendaEnum tipoVenda;
  final double preco;
  final bool disponibilidade;

  ProdutoModel(
      {required this.mercadoria,
      required this.tipoVenda,
      required this.preco,
      required this.disponibilidade});

  String get getPrecoFormat =>
      NumberFormat.simpleCurrency(decimalDigits: 2, locale: 'pt_BR')
          .format(preco);

  ProdutoModel copyWith(
      {MercadoriasEnum? mercadoria,
      TipoVendaEnum? tipoVenda,
      double? preco,
      bool? disponibilidade}) {
    return ProdutoModel(
        mercadoria: mercadoria ?? this.mercadoria,
        tipoVenda: tipoVenda ?? this.tipoVenda,
        preco: preco ?? this.preco,
        disponibilidade: disponibilidade ?? this.disponibilidade);
  }
}
