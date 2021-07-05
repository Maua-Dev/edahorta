import 'package:edahorta/app/enumerate/mercadorias_enum.dart';
import 'package:edahorta/app/shared/constants/app_colors.dart';
import 'package:edahorta/app/shared/widgets/appbar_logo_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:edahorta/app/modules/edition/edition_controller.dart';
import 'package:flutter/material.dart';
import 'widgets/image_widget.dart';
import 'widgets/price_change_widget.dart';
import 'widgets/save_button_widget.dart';
import 'widgets/tipo_venda_change_widget.dart';

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
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * .9 - 16,
          child: Stack(
            children: [
              Container(
                width: 500,
                decoration: BoxDecoration(color: AppColors.primary),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    if (controller.produto.mercadoria == MercadoriasEnum.Outro)
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        width: MediaQuery.of(context).size.width * .5,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Digite o nome do produto'),
                        ),
                      )
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  child: Container(
                    padding: EdgeInsets.only(top: 64),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.6,
                    color: Colors.white,
                    child: Column(
                      children: [
                        PriceChangeWidget(controller: controller),
                        TipoVendaChangeWidget(controller: controller),
                        SaveButtonWidget(controller: controller),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                bottom: MediaQuery.of(context).size.height * 0.55,
                child: Container(
                  alignment: Alignment.topRight,
                  child: MercadoriasEnum.Outro == controller.produto.mercadoria
                      ? Container(
                          padding: EdgeInsets.only(right: 8),
                          width: 192,
                          height: 192,
                          child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            foregroundColor: Colors.black,
                            child: Icon(
                              Icons.camera_alt,
                              size: 64,
                            ),
                          ),
                        )
                      : ImageWidget(
                          pathAsset: controller.produto.mercadoria.pathAsset),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}