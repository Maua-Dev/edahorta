import 'dart:async';
import 'package:edahorta/app/shared/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Modular.to.pushNamed('/home');
    });
  }

  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: AppTheme.logoImage,
      ),
    );
  }
}
