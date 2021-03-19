part of '../tdapi.dart';

/// Group.Functions
/// Returns the received vector of objects containing a number; for testing only. This is an offline method. Can be called before authorization
class TestCallVectorIntObject extends TdFunction {
  TestCallVectorIntObject({required this.x});

  /// x Vector of objects to return
  final List<TestInt> x;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'testCallVectorIntObject';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'x': this.x, '@type': CONSTRUCTOR, '@extra': this.extra};
}
