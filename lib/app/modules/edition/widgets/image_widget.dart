import 'package:edahorta/app/modules/edition/edition_controller.dart';
import 'package:flutter/material.dart';
import 'package:edahorta/app/enumerate/mercadorias_enum.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final EditionController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 8),
      alignment: Alignment.topRight,
      child: Container(
        height: 168,
        width: 173,
        child: Image.asset(
          controller.produto.mercadoria.pathAsset,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
