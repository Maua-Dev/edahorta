import 'package:edahorta/app/modules/home/widgets/product_card_widget.dart';
import 'package:edahorta/app/enumerate/mercadorias_enum.dart';
import 'package:edahorta/app/shared/constants/app_colors.dart';
import 'package:edahorta/app/shared/widgets/appbar_logo_widget.dart';
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
      appBar: AppBarLogo(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
          child: Observer(builder: (context) {
            if (controller.produto.isEmpty) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.separated(
              itemBuilder: (context, index) {
                if (index == controller.produto.length) {
                  return SizedBox(
                    height: 50,
                  );
                }
                return ProductCardWidget(
                  key: ValueKey(
                      '${controller.produto[index].mercadoria.name}-$index'),
                  onTap: () {
                    Modular.to.pushNamed('/mercadoria',
                        arguments: controller.produto[index]);
                  },
                  produto: controller.produto[index],
                  onChanged: (value) =>
                      controller.trocarDisponibilidade(index, value),
                );
              },
              itemCount: controller.produto.length + 1,
              separatorBuilder: (context, index) => SizedBox(
                height: 8,
              ),
            );
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        key: ValueKey('adicionar'),
        onPressed: () {
          Modular.to.pushNamed('/selecaoProdutos');
        },
        label: Text(
          'Adicionar',
          style: TextStyle(color: Colors.white),
        ),
        icon: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: AppColors.primary,
      ),
    );
  }
}
