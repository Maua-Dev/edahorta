import 'package:edahorta/app/enums/mercadorias_enum.dart';
import 'package:edahorta/app/enums/tipo_venda_enum.dart';

class Produto {
  final Mercadorias mercadoria;
  final TipoVenda tipoVenda;
  final double preco;
  final bool disponibilidade;

  Produto(
      {required this.mercadoria,
      required this.tipoVenda,
      required this.preco,
      required this.disponibilidade});

  Map<String, dynamic> toJson() => <String, dynamic>{
        'mercadoria': mercadoria,
        'tipoVenda': tipoVenda,
        'preco': preco,
      };
}
