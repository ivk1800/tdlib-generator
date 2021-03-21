import '../tdapi.dart';

/// A simple object containing a vector of objects that hold a string; for
/// only
class TestVectorStringObject extends TdObject {
  TestVectorStringObject({required this.value});

  /// [value] Vector of objects
  final List<TestString> value;

  static const String CONSTRUCTOR = 'testVectorStringObject';

  static TestVectorStringObject? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TestVectorStringObject(
        value: List<TestString>.from((json['value}'] ?? [])
            .map((item) => TestString.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'value': this.value, '@type': CONSTRUCTOR};
}
