import '../tdapi.dart';

/// A simple object containing a vector of objects that hold a string; for
/// only
class TestVectorStringObject extends TdObject {
  TestVectorStringObject({required this.value, this.extra});

  /// [value] Vector of objects
  final List<TestString> value;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'testVectorStringObject';

  static TestVectorStringObject? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TestVectorStringObject(
        value: List<TestString>.from((json['value}'] ?? [])
            .map((item) => TestString.fromJson(item))
            .toList()),
        extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'value': this.value, '@type': CONSTRUCTOR, '@extra': this.extra};
}
