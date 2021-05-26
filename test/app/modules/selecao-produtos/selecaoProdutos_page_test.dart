import 'package:edahorta/app/enumeration/mercadorias_enum.dart';
import 'package:edahorta/app/modules/selecao-produtos/selecaoProdutos_module.dart';
import 'package:edahorta/app/modules/selecao-produtos/selecaoProdutos_page.dart';
import 'package:edahorta/app/shared/widgets/appbar_logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mockito/mockito.dart';

import 'selecaoProdutos_store_test.mocks.dart';

void main() {
  var navigatorMock = MockIModularNavigator();
  Modular.navigatorDelegate = navigatorMock;
  setUpAll(() {
    initModule(SelecaoProdutosModule(), initialModule: true);
  });

  testWidgets('[TEST] - Page SelecaoProdutosPage pump and find AppBarLogo',
      (tester) async {
    await tester.pumpWidget(buildTestableWidget(SelecaoProdutosPage()));

    final material = find.byType(AppBarLogo);
    expect(material, findsOneWidget);
  });
  testWidgets('[TEST] - Page SelecaoProdutosPage tap item', (tester) async {
    var mercadoria = MercadoriasEnum.Batata;
    when(navigatorMock.pushNamed('/mercadoria', arguments: mercadoria))
        .thenAnswer((_) async => {});

    await tester.pumpWidget(buildTestableWidget(SelecaoProdutosPage()));

    final batata = find.text('Batata');
    expect(batata, findsOneWidget);
    await tester.tap(batata);
    verify(navigatorMock.pushNamed('/mercadoria', arguments: mercadoria))
        .called(1);
  });

  testWidgets('[TEST] - Page SelecaoProdutosPage scroll to last item and find',
      (tester) async {
    await tester.pumpWidget(buildTestableWidget(SelecaoProdutosPage()));

    final listview = find.byType(ListView);
    expect(listview, findsOneWidget);

    await tester.drag(listview, Offset(0, -500));
    await tester.pump();

    final tomate = find.byKey(ValueKey('Tomate'));
    expect(tomate, findsOneWidget);
  });
  testWidgets('[TEST] - Page SelecaoProdutosPage tap button add manual',
      (tester) async {
    when(navigatorMock.pushNamed('/mercadoria')).thenAnswer((_) async => {});

    await tester.pumpWidget(buildTestableWidget(SelecaoProdutosPage()));

    final button = find.text('Adicionar manualmente');
    expect(button, findsOneWidget);

    await tester.tap(button);
    verify(navigatorMock.pushNamed('/mercadoria')).called(1);
  });
}
