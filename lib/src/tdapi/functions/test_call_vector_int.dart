import '../tdapi.dart';

/// Returns the received vector of numbers; for testing only. This is an
/// method. Can be called before authorization
class TestCallVectorInt extends TdFunction {
  TestCallVectorInt({required this.x});

  /// [x] Vector of numbers to return
  final List<int> x;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'testCallVectorInt';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'x': this.x, '@type': CONSTRUCTOR, '@extra': this.extra};
}
