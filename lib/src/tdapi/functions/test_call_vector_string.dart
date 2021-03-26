import '../tdapi.dart';

/// Returns the received vector of strings; for testing only. This is an
/// method. Can be called before authorization
/// Returns [TestVectorString]
class TestCallVectorString extends TdFunction {
  TestCallVectorString({required this.x, this.extra});

  /// [x] Vector of strings to return
  final List<String> x;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'testCallVectorString';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'x': x.map((item) => item).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
