import 'package:flutter/material.dart';

import '../edition_controller.dart';

class SaveButtonWidget extends StatelessWidget {
  const SaveButtonWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final EditionController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width * 0.4,
      child: ElevatedButton(
        onPressed: controller.salvarProduto,
        child: Text(
          'Salvar',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
