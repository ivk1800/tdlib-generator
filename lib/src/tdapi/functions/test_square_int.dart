part of '../tdapi.dart';

/// Returns the squared received number; for testing only. This is an offline method. Can be called before authorization
class TestSquareInt extends TdFunction {
  TestSquareInt({required this.x});

  /// [x] Number to square
  final int x;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'testSquareInt';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'x': this.x, '@type': CONSTRUCTOR, '@extra': this.extra};
}
