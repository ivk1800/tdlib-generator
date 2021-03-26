import '../tdapi.dart';

/// Forces an updates.getDifference call to the Telegram servers; for testing
/// Returns [Ok]
class TestGetDifference extends TdFunction {
  TestGetDifference({this.extra});

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'testGetDifference';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
