import '../tdapi.dart';

/// A simple object containing a sequence of bytes; for testing only
class TestBytes extends TdObject {
  TestBytes({required this.value, this.extra});

  /// [value] Bytes
  final String value;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'testBytes';

  static TestBytes? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TestBytes(value: json['value'], extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'value': this.value, '@type': CONSTRUCTOR, '@extra': this.extra};
}
