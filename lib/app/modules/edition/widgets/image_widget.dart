import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String pathAsset;
  const ImageWidget({
    Key? key,
    required this.pathAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 8),
      alignment: Alignment.topRight,
      child: Container(
        height: 168,
        width: 173,
        child: Image.asset(
          pathAsset,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
