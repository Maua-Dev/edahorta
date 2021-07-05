import 'package:flutter/material.dart';

import '../edition_controller.dart';

class PriceChangeWidget extends StatelessWidget {
  const PriceChangeWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final EditionController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 32, right: 32, top: 8),
      child: TextFormField(
        controller: controller.textController,
        onChanged: (value) {
          controller.alterarPreco(controller.textController.numberValue);
        },
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: 'Preço',
          border: OutlineInputBorder(),
          suffixIcon: Icon(Icons.close),
        ),
      ),
    );
  }
}
