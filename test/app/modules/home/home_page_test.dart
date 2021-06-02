import 'package:edahorta/app/app_module.dart';
import 'package:edahorta/app/modules/home/home_module.dart';
import 'package:edahorta/app/modules/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'home_page_test.mocks.dart';

@GenerateMocks([IModularNavigator])
void main() {
  var navigatorMock = MockIModularNavigator();
  Modular.navigatorDelegate = navigatorMock;
  setUpAll(() {
    initModules([AppModule(), HomeModule()]);
  });
  testWidgets('[TEST] - Teste page pump', (tester) async {
    await tester.pumpWidget(buildTestableWidget(HomePage()));

    final material = find.byKey(ValueKey('AppBarLogo'));
    expect(material, findsOneWidget);
  });

  testWidgets('[TEST] - Page HomePage tap item', (tester) async {
    when(navigatorMock.pushNamed('/mercadoria')).thenAnswer((_) async => {});

    await tester.pumpWidget(buildTestableWidget(HomePage()));

    await tester.pump();

    final alface = find.byKey(ValueKey('Alface-0'));
    expect(alface, findsOneWidget);
    await tester.tap(alface);
    verify(navigatorMock.pushNamed('/mercadoria')).called(1);
  });
  testWidgets('[TEST] - Page HomePage tap FAB', (tester) async {
    when(navigatorMock.pushNamed('/selecaoProdutos'))
        .thenAnswer((_) async => {});

    await tester.pumpWidget(buildTestableWidget(HomePage()));

    final fab = find.byKey(ValueKey('adicionar'));
    expect(fab, findsOneWidget);
    await tester.tap(fab);
    verify(navigatorMock.pushNamed('/selecaoProdutos')).called(1);
  });
  testWidgets('[TEST] - Page HomePage tap Switch item', (tester) async {
    await tester.pumpWidget(buildTestableWidget(HomePage()));

    await tester.pump();

    final alface = find.byKey(ValueKey('[<\'Alface-0\'>]-Switch'));
    expect(alface, findsOneWidget);
    await tester.tap(alface);
  });
}
