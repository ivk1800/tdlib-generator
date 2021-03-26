import '../tdapi.dart';

/// Returns the squared received number; for testing only. This is an offline
/// Can be called before authorization
/// Returns [TestInt]
class TestSquareInt extends TdFunction {
  TestSquareInt({required this.x, this.extra});

  /// [x] Number to square
  final int x;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'testSquareInt';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'x': this.x, '@type': CONSTRUCTOR, '@extra': this.extra};
}
