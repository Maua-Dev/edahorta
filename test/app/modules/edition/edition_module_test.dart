import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:edahorta/app/modules/edition/edition_module.dart';

void main() {
  setUpAll(() {
    initModule(EditionModule());
  });
  test('Get Controller', () {});
}
