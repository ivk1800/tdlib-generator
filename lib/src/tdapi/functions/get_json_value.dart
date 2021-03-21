part of '../tdapi.dart';

/// Converts a JSON-serialized string to corresponding JsonValue object. Can be called synchronously
class GetJsonValue extends TdFunction {
  GetJsonValue({required this.json});

  /// [json] The JSON-serialized string
  final String json;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getJsonValue';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'json': this.json, '@type': CONSTRUCTOR, '@extra': this.extra};
}
