import 'package:edahorta/app/app_module.dart';
import 'package:edahorta/app/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUpAll(() {
    initModule(AppModule(), initialModule: true);
  });
  testWidgets('App Widget title', (tester) async {
    await tester.pumpWidget(buildTestableWidget(AppWidget()));

    final material = find.byType(MaterialApp);
    expect(material, findsNWidgets(2));
  });
}
