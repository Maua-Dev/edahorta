import 'package:edahorta/app/shared/constants/app_theme.dart';
import 'package:flutter/material.dart';

class AppBarLogo extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final List<Widget>? actions;
  final void Function()? leadingPressed;
  final double? toolbarHeight;

  AppBarLogo({Key? key, this.toolbarHeight, this.actions, this.leadingPressed})
      : preferredSize = Size.fromHeight((toolbarHeight ?? kToolbarHeight) + 16),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AppBar(
          automaticallyImplyLeading: true,
          actions: actions,
          flexibleSpace: Container(
            height: MediaQuery.of(context).size.height * 0.1,
            child: Opacity(opacity: 0.15, child: AppTheme.logoImage),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          // iconTheme: IconThemeData().copyWith(color: AppColors.primary),
        ),
      ),
    );
  }
}
