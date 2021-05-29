// Mocks generated by Mockito 5.0.9 from annotations
// in edahorta/test/app/modules/selecao-produtos/selecaoProdutos_store_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:flutter/src/widgets/navigator.dart' as _i4;
import 'package:flutter_modular/src/core/interfaces/modular_navigator_interface.dart'
    as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

/// A class which mocks [IModularNavigator].
///
/// See the documentation for Mockito's code generation for more information.
class MockIModularNavigator extends _i1.Mock implements _i2.IModularNavigator {
  MockIModularNavigator() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get path =>
      (super.noSuchMethod(Invocation.getter(#path), returnValue: '') as String);
  @override
  String get localPath =>
      (super.noSuchMethod(Invocation.getter(#localPath), returnValue: '')
          as String);
  @override
  String get modulePath =>
      (super.noSuchMethod(Invocation.getter(#modulePath), returnValue: '')
          as String);
  @override
  void addListener(void Function()? listener) =>
      super.noSuchMethod(Invocation.method(#addListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void removeListener(void Function()? listener) =>
      super.noSuchMethod(Invocation.method(#removeListener, [listener]),
          returnValueForMissingStub: null);
  @override
  _i3.Future<T?> push<T extends Object?>(_i4.Route<T>? route) =>
      (super.noSuchMethod(Invocation.method(#push, [route]),
          returnValue: Future<T?>.value()) as _i3.Future<T?>);
  @override
  _i3.Future<T?> popAndPushNamed<T extends Object?, TO extends Object?>(
          String? routeName,
          {TO? result,
          Object? arguments,
          bool? forRoot = false}) =>
      (super.noSuchMethod(
          Invocation.method(#popAndPushNamed, [routeName],
              {#result: result, #arguments: arguments, #forRoot: forRoot}),
          returnValue: Future<T?>.value()) as _i3.Future<T?>);
  @override
  _i3.Future<T?> pushNamed<T extends Object?>(String? routeName,
          {Object? arguments, bool? forRoot = false}) =>
      (super.noSuchMethod(
          Invocation.method(#pushNamed, [routeName],
              {#arguments: arguments, #forRoot: forRoot}),
          returnValue: Future<T?>.value()) as _i3.Future<T?>);
  @override
  _i3.Future<T?> pushNamedAndRemoveUntil<T extends Object?>(
          String? newRouteName, bool Function(_i4.Route<dynamic>)? predicate,
          {Object? arguments, bool? forRoot = false}) =>
      (super.noSuchMethod(
          Invocation.method(#pushNamedAndRemoveUntil, [newRouteName, predicate],
              {#arguments: arguments, #forRoot: forRoot}),
          returnValue: Future<T?>.value()) as _i3.Future<T?>);
  @override
  _i3.Future<T?> pushReplacementNamed<T extends Object?, TO extends Object?>(
          String? routeName,
          {TO? result,
          Object? arguments,
          bool? forRoot = false}) =>
      (super.noSuchMethod(
          Invocation.method(#pushReplacementNamed, [routeName],
              {#result: result, #arguments: arguments, #forRoot: forRoot}),
          returnValue: Future<T?>.value()) as _i3.Future<T?>);
  @override
  void pop<T extends Object>([T? result]) =>
      super.noSuchMethod(Invocation.method(#pop, [result]),
          returnValueForMissingStub: null);
  @override
  bool canPop() =>
      (super.noSuchMethod(Invocation.method(#canPop, []), returnValue: false)
          as bool);
  @override
  _i3.Future<bool> maybePop<T extends Object>([T? result]) =>
      (super.noSuchMethod(Invocation.method(#maybePop, [result]),
          returnValue: Future<bool>.value(false)) as _i3.Future<bool>);
  @override
  void popUntil(bool Function(_i4.Route<dynamic>)? predicate) =>
      super.noSuchMethod(Invocation.method(#popUntil, [predicate]),
          returnValueForMissingStub: null);
  @override
  void navigate(String? path, {dynamic arguments, bool? replaceAll = false}) =>
      super.noSuchMethod(
          Invocation.method(#navigate, [path],
              {#arguments: arguments, #replaceAll: replaceAll}),
          returnValueForMissingStub: null);
}
