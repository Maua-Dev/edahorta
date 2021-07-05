import 'package:edahorta/app/shared/constants/app_colors.dart';
import 'package:edahorta/app/shared/constants/app_theme.dart';
import 'package:flutter/material.dart';

class AppBarLogo extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final List<Widget>? actions;
  final void Function()? leadingPressed;
  final double? toolbarHeight;
  final Color? backgroundColor;
  AppBarLogo(
      {Key? key,
      this.toolbarHeight,
      this.actions,
      this.leadingPressed,
      this.backgroundColor})
      : preferredSize = Size.fromHeight((toolbarHeight ?? kToolbarHeight) + 16),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        key: ValueKey('AppBarLogo'),
        actions: actions,
        iconTheme: IconThemeData(
          color: backgroundColor == null ? AppColors.primary : Colors.white,
        ),
        flexibleSpace: Container(
          height: MediaQuery.of(context).size.height * 0.1,
          child: AppTheme.logoImage,
        ),
        backgroundColor: backgroundColor ?? Colors.white,
        elevation: 0,
      ),
    );
  }
}
