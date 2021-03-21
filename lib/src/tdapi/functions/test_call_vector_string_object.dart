import '../tdapi.dart';

/// Returns the received vector of objects containing a string; for testing
/// This is an offline method. Can be called before authorization
class TestCallVectorStringObject extends TdFunction {
  TestCallVectorStringObject({required this.x});

  /// [x] Vector of objects to return
  final List<TestString> x;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'testCallVectorStringObject';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'x': this.x, '@type': CONSTRUCTOR, '@extra': this.extra};
}
