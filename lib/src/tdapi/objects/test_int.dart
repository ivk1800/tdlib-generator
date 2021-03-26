import '../tdapi.dart';

/// A simple object containing a number; for testing only
class TestInt extends TdObject {
  TestInt({required this.value, this.extra});

  /// [value] Number
  final int value;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'testInt';

  static TestInt? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TestInt(value: json['value'], extra: json['@extra']);
  }

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'value': this.value, '@type': CONSTRUCTOR, '@extra': this.extra};
}
