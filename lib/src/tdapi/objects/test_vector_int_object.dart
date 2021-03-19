part of '../tdapi.dart';

/// Group.Objects
/// A simple object containing a vector of objects that hold a number; for testing only
class TestVectorIntObject extends TdObject {
  TestVectorIntObject({required this.value});

  /// value Vector of objects
  final List<TestInt> value;

  static const String CONSTRUCTOR = 'testVectorIntObject';

  static TestVectorIntObject? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TestVectorIntObject(
        value: List<TestInt>.from((json['value}'] ?? [])
            .map((item) => TestInt.fromJson(json['TestInt'])!)
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'value': this.value, '@type': CONSTRUCTOR};
}
