import 'package:flutter_modular/flutter_modular.dart';
import 'package:edahorta/app/modules/edition/edition_controller.dart';
import 'package:flutter/material.dart';

class EditionPage extends StatefulWidget {
  final String title;
  const EditionPage({Key? key, this.title = 'EditionPage'}) : super(key: key);
  @override
  EditionPageState createState() => EditionPageState();
}

class EditionPageState extends State<EditionPage> {
  final EditionController store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
