import 'package:edahorta/app/shared/widgets/appbar_logo_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:edahorta/app/modules/selecao-produtos/selecaoProdutos_controller.dart';
import 'package:edahorta/app/enumeration/mercadorias_enum.dart';
import 'package:flutter/material.dart';

class SelecaoProdutosPage extends StatefulWidget {
  const SelecaoProdutosPage({Key? key}) : super(key: key);
  @override
  SelecaoProdutosPageState createState() => SelecaoProdutosPageState();
}

class SelecaoProdutosPageState
    extends ModularState<SelecaoProdutosPage, SelecaoProdutosController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarLogo(),
      body: SafeArea(
        child: Container(
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: ListTile(
                            contentPadding: EdgeInsets.all(16),
                            leading: Container(
                              height: 64,
                              width: 64,
                              child: Image.asset(
                                  controller.mercadorias[index].pathAsset),
                            ),
                            title: Text(
                              controller.mercadorias[index].name,
                              style: TextStyle(fontSize: 24),
                            ),
                            trailing: Icon(Icons.arrow_forward_ios_outlined),
                            onTap: () => controller.selectMercadoria(
                                mercadoria: controller.mercadorias[index]),
                          ),
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          height: 8,
                        ),
                    itemCount: controller.mercadorias.length),
              ),
              Positioned(
                bottom: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32)),
                  child: Material(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32),
                            topRight: Radius.circular(32)),
                        side: BorderSide(color: Colors.grey)),
                    elevation: 8,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Text(
                            'Não Encontrou seu item? Clique aqui:',
                            style: TextStyle(fontSize: 16),
                          ),
                          ElevatedButton.icon(
                              onPressed: controller.selectMercadoria,
                              icon: Icon(Icons.camera_alt),
                              label: Text(
                                'Adicionar manualmente',
                                style: TextStyle(fontSize: 16),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
