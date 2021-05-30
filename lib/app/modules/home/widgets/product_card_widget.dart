import 'package:edahorta/app/shared/models/produto_model.dart';
import 'package:flutter/material.dart';
import 'package:edahorta/app/enumerate/mercadorias_enum.dart';
import 'package:edahorta/app/enumerate/tipo_venda_enum.dart';

class ProductCardWidget extends StatelessWidget {
  final Produto produto;
  final void Function(bool value) onChanged;
  final void Function() onTap;
  const ProductCardWidget({
    Key? key,
    required this.produto,
    required this.onChanged,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          dense: true,
          contentPadding: EdgeInsets.all(16),
          onTap: onTap,
          trailing: Switch(
            value: produto.disponibilidade,
            onChanged: onChanged,
          ),
          title: Text(
            produto.mercadoria.name,
            style: TextStyle(fontSize: 24),
          ),
          leading: Container(
            width: 64,
            height: 64,
            child: Image.asset(produto.mercadoria.pathAsset),
          ),
          subtitle: Text(
            '${produto.getPrecoFormat} / ${produto.tipoVenda.name}',
            style: TextStyle(fontSize: 16),
          )),
    );
  }
}
