import 'package:edahorta/app/shared/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'splash_screen_test.mocks.dart';

@GenerateMocks([IModularNavigator])
void main() {
  var navigatorMock = MockIModularNavigator();
  Modular.navigatorDelegate = navigatorMock;
  testWidgets('Splash Screen', (tester) async {
    when(navigatorMock.navigate('/home')).thenAnswer((_) async => {});
    await tester.pumpWidget(buildTestableWidget(SplashScreen()));

    final material = find.byKey(ValueKey('Splash'));
    expect(material, findsOneWidget);
    await tester.pumpAndSettle(const Duration(seconds: 2));
    verify(navigatorMock.navigate('/home')).called(1);
  });
}
