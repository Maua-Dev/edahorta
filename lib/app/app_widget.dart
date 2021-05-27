import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:asuka/asuka.dart' as asuka;

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: asuka.builder,
      navigatorObservers: [asuka.asukaHeroController],
      title: 'É da Horta',
      theme: ThemeData(primarySwatch: Colors.blue),
    ).modular();
  }
}
