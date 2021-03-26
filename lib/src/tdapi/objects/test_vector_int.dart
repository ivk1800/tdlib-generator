import '../tdapi.dart';

/// A simple object containing a vector of numbers; for testing only
class TestVectorInt extends TdObject {
  TestVectorInt({required this.value, this.extra});

  /// [value] Vector of numbers
  final List<int> value;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'testVectorInt';

  static TestVectorInt? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TestVectorInt(
        value: List<int>.from(
            (json['value}'] ?? []).map((item) => json['int']).toList()),
        extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'value': value.map((item) => item).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
