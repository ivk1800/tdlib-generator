import '../tdapi.dart';

/// Returns the received string; for testing only. This is an offline method.
/// be called before authorization
/// Returns [TestString]
class TestCallString extends TdFunction {
  TestCallString({required this.x});

  /// [x] String to return
  final String x;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'testCallString';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'x': this.x, '@type': CONSTRUCTOR, '@extra': this.extra};
}
