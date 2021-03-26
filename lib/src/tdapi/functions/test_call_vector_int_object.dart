import '../tdapi.dart';

/// Returns the received vector of objects containing a number; for testing
/// This is an offline method. Can be called before authorization
/// Returns [TestVectorIntObject]
class TestCallVectorIntObject extends TdFunction {
  TestCallVectorIntObject({required this.x});

  /// [x] Vector of objects to return
  final List<TestInt> x;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'testCallVectorIntObject';

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
