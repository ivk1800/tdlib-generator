import '../tdapi.dart';

/// A simple object containing a vector of strings; for testing only
class TestVectorString extends TdObject {
  TestVectorString({required this.value, this.extra});

  /// [value] Vector of strings
  final List<String> value;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'testVectorString';

  static TestVectorString? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TestVectorString(
        value: List<String>.from(
            (json['value}'] ?? []).map((item) => json['String']).toList()),
        extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'value': this.value, '@type': CONSTRUCTOR, '@extra': this.extra};
}
