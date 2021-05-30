import 'package:edahorta/app/enumerate/mercadorias_enum.dart';
import 'package:edahorta/app/enumerate/tipo_venda_enum.dart';
import 'package:intl/intl.dart';

class Produto {
  final MercadoriasEnum mercadoria;
  final TipoVendaEnum tipoVenda;
  final double preco;
  final bool disponibilidade;

  Produto(
      {required this.mercadoria,
      required this.tipoVenda,
      required this.preco,
      required this.disponibilidade});

  String get getPrecoFormat =>
      NumberFormat.simpleCurrency(decimalDigits: 2, locale: 'pt_BR')
          .format(preco);
}
