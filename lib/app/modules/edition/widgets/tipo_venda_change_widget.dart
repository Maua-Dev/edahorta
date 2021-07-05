import 'package:edahorta/app/enumerate/tipo_venda_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../edition_controller.dart';
import 'unidade_button_widget.dart';

class TipoVendaChangeWidget extends StatelessWidget {
  const TipoVendaChangeWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final EditionController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8, bottom: 8),
      padding: EdgeInsets.only(top: 8, bottom: 8),
      height: MediaQuery.of(context).size.height * 0.30,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.grey),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: EdgeInsets.only(left: 8),
            child: Text(
              'Unidade: ',
              style: TextStyle(fontSize: 24),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...List.generate(
                TipoVendaEnum.values.length,
                (index) => Observer(
                  builder: (_) => UnidadeButtonWidget(
                    label: TipoVendaEnum.values[index].name,
                    select: controller.produto.tipoVenda ==
                        TipoVendaEnum.values[index],
                    onTap: () {
                      controller.alterarTipoVenda(TipoVendaEnum.values[index]);
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
