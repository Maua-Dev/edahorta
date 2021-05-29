import 'package:edahorta/app/app_module.dart';
import 'package:edahorta/app/modules/home/home_module.dart';
import 'package:edahorta/app/modules/home/home_page.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUpAll(() {
    initModules([AppModule(), HomeModule()]);
  });
  testWidgets('[TEST] - Teste page pump', (tester) async {
    await tester.pumpWidget(buildTestableWidget(HomePage()));

    final material = find.text('Hi');
    expect(material, findsOneWidget);
  });
}
