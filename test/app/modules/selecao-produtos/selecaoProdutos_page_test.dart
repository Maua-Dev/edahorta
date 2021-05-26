import 'package:edahorta/app/modules/selecao-produtos/selecaoProdutos_module.dart';
import 'package:edahorta/app/modules/selecao-produtos/selecaoProdutos_page.dart';
import 'package:edahorta/app/shared/widgets/appbar_logo_widget.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUpAll(() {
    initModule(SelecaoProdutosModule(), initialModule: true);
  });
  testWidgets('[TEST] - Page SelecaoProdutosPage pump and find AppBarLogo',
      (tester) async {
    await tester.pumpWidget(buildTestableWidget(SelecaoProdutosPage()));

    final material = find.byType(AppBarLogo);
    expect(material, findsOneWidget);
  });
}
