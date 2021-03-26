import '../tdapi.dart';

/// Returns the received vector of objects containing a string; for testing
/// This is an offline method. Can be called before authorization
/// Returns [TestVectorStringObject]
class TestCallVectorStringObject extends TdFunction {
  TestCallVectorStringObject({required this.x, this.extra});

  /// [x] Vector of objects to return
  final List<TestString> x;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'testCallVectorStringObject';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'x': x.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
