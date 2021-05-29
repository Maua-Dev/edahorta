import 'package:edahorta/app/shared/models/produto_model.dart';
import 'package:flutter/material.dart';
import 'package:edahorta/app/enumerate/mercadorias_enum.dart';

import '../home_controller.dart';

class ProductCardWidget extends StatelessWidget {
  final Produto produto;
  final void Function(bool value) onChanged;
  const ProductCardWidget({
    Key? key,
    required this.produto,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: SwitchListTile(
            value: produto.disponibilidade,
            onChanged: onChanged,
            title: Text(produto.mercadoria.name),
            secondary: Container(
              width: 64,
              height: 64,
              child: Image.asset(produto.mercadoria.pathAsset),
            ),
            subtitle: Text('R\$ ${produto.preco} / ${produto.tipoVenda}')),
      ),
    );
  }
}
