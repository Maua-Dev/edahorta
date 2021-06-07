import 'package:edahorta/app/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';

class UnidadeButtonWidget extends StatelessWidget {
  final String label;
  final bool select;
  final void Function() onTap;
  UnidadeButtonWidget(
      {Key? key, required this.label, this.select = false, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 120,
        height: 35,
        decoration: BoxDecoration(
          color: select ? AppColors.primary : Color(0xFFEBEBFC),
          border: Border.fromBorderSide(
            BorderSide(color: Color(0xFFCECEF5)),
          ),
          borderRadius: BorderRadius.circular(28),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 6),
          child: Center(
            child: Text(
              label,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
