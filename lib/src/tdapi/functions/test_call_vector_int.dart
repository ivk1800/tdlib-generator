import '../tdapi.dart';

/// Returns the received vector of numbers; for testing only. This is an
/// method. Can be called before authorization
/// Returns [TestVectorInt]
class TestCallVectorInt extends TdFunction {
  TestCallVectorInt({required this.x, this.extra});

  /// [x] Vector of numbers to return
  final List<int> x;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'testCallVectorInt';

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
