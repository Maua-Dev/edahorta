import 'package:edahorta/app/shared/constants/app_colors.dart';
import 'package:edahorta/app/shared/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'É da Horta',
      initialRoute: '/selecaoProdutos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: AppColors.primary,
          accentColor: AppColors.secondary,
          buttonTheme: AppTheme.buttonTheme),
    ).modular();
  }
}
