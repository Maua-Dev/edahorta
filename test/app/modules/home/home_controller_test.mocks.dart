// Mocks generated by Mockito 5.0.9 from annotations
// in edahorta/test/app/modules/home/home_controller_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:edahorta/app/modules/home/repositories/home_repository_interface.dart'
    as _i3;
import 'package:edahorta/app/shared/models/produto_model.dart' as _i5;
import 'package:edahorta/app/shared/services/loading_service.dart' as _i6;
import 'package:flutter/src/widgets/overlay.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeOverlayEntry extends _i1.Fake implements _i2.OverlayEntry {}

/// A class which mocks [IHomeRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIHomeRepository extends _i1.Mock implements _i3.IHomeRepository {
  MockIHomeRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<List<_i5.ProdutoModel>> getProduto() =>
      (super.noSuchMethod(Invocation.method(#getProduto, []),
              returnValue:
                  Future<List<_i5.ProdutoModel>>.value(<_i5.ProdutoModel>[]))
          as _i4.Future<List<_i5.ProdutoModel>>);
  @override
  _i4.Future<List<_i5.ProdutoModel>> salvarDisponibilidade(
          int? index, bool? transformado) =>
      (super.noSuchMethod(
              Invocation.method(#salvarDisponibilidade, [index, transformado]),
              returnValue:
                  Future<List<_i5.ProdutoModel>>.value(<_i5.ProdutoModel>[]))
          as _i4.Future<List<_i5.ProdutoModel>>);
}

/// A class which mocks [LoadingService].
///
/// See the documentation for Mockito's code generation for more information.
class MockLoadingService extends _i1.Mock implements _i6.LoadingService {
  MockLoadingService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.OverlayEntry get entry => (super.noSuchMethod(Invocation.getter(#entry),
      returnValue: _FakeOverlayEntry()) as _i2.OverlayEntry);
  @override
  set entry(_i2.OverlayEntry? _entry) =>
      super.noSuchMethod(Invocation.setter(#entry, _entry),
          returnValueForMissingStub: null);
  @override
  void showLoading() => super.noSuchMethod(Invocation.method(#showLoading, []),
      returnValueForMissingStub: null);
  @override
  void dismissLoading() =>
      super.noSuchMethod(Invocation.method(#dismissLoading, []),
          returnValueForMissingStub: null);
}