import 'package:flutter_test/flutter_test.dart';
import 'package:edahorta/app/modules/edition/edition_controller.dart';

void main() {
  late EditionController store;

  setUpAll(() {
    store = EditionController();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}
