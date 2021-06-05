import 'package:edahorta/app/shared/constants/app_colors.dart';

import 'package:edahorta/app/shared/widgets/appbar_logo_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:edahorta/app/modules/edition/edition_controller.dart';
import 'package:flutter/material.dart';

import 'widgets/image_widget.dart';

class EditionPage extends StatefulWidget {
  final String title;
  const EditionPage({Key? key, this.title = 'EditionPage'}) : super(key: key);
  @override
  EditionPageState createState() => EditionPageState();
}

class EditionPageState extends State<EditionPage> {
  final EditionController controller = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarLogo(
        backgroundColor: AppColors.primary,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: AppColors.primary),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.topLeft,
                  child: Container(
                    alignment: Alignment.topLeft,
                    width: 250,
                    height: 70,
                    child: Text(
                      'Nesta página você escolhe um preço e a unidade de venda do seu produto.',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              child: Container(
                padding: EdgeInsets.only(top: 64),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.6,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 32, right: 32, top: 8),
                      child: TextFormField(
                        controller: controller.textController,
                        onChanged: (value) {
                          controller.alterarPreco(
                              controller.textController.numberValue);
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Preço',
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.close),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.6,
            bottom: MediaQuery.of(context).size.height * 0.55,
            child: Container(
              alignment: Alignment.topRight,
              child: ImageWidget(controller: controller),
            ),
          )
        ],
      ),
    );
  }
}
