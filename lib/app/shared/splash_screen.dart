import 'dart:async';

import 'package:edahorta/app/modules/selecao-produtos/selecaoProdutos_module.dart';
import 'package:edahorta/app/modules/selecao-produtos/selecaoProdutos_page.dart';
import 'package:edahorta/app/shared/constants/app_theme.dart';
import 'package:edahorta/app/shared/widgets/appbar_logo_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:edahorta/app/modules/selecao-produtos/selecaoProdutos_controller.dart';
import 'package:edahorta/app/enumerate/mercadorias_enum.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushNamed(context, "selecaoProdutos");
    });
  }

  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF61FF47), Color(0xFF666666)]),
      ),
      child: Center(
        child: AppTheme.logoImage,
      ),
    );
  }
}
