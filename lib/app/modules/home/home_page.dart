import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:edahorta/app/modules/home/home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'Home'}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (context) => Text("Hi"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.alterarDisponibilidade,
        child: Icon(Icons.add),
      ),
    );
  }
}
