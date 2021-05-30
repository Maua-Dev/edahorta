import 'package:edahorta/app/shared/constants/app_colors.dart';
import 'package:edahorta/app/shared/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:asuka/asuka.dart' as asuka;

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: asuka.builder,
      navigatorObservers: [asuka.asukaHeroController],
      title: 'É da Horta',
      initialRoute: '/',
      theme: ThemeData(
        colorScheme: ColorScheme.light().copyWith(
            primary: AppColors.primary, secondary: AppColors.secondary),
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: AppTheme.elevatedButtonTheme,
        cardTheme: AppTheme.cardTheme,
      ),
    ).modular();
  }
}
