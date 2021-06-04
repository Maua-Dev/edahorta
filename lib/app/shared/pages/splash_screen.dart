import 'dart:async';
import 'package:edahorta/app/shared/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen() {
    changePage();
  }

  void changePage() {
    Future.delayed(Duration(seconds: 2)).then((value) {
      Modular.to.navigate('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ValueKey('Splash'),
      child: Center(
        child: AppTheme.logoImage,
      ),
    );
  }
}
