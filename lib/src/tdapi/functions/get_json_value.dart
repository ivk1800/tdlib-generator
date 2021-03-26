import '../tdapi.dart';

/// Converts a JSON-serialized string to corresponding JsonValue object. Can
/// called synchronously
/// Returns [JsonValue]
class GetJsonValue extends TdFunction {
  GetJsonValue({required this.json});

  /// [json] The JSON-serialized string
  final String json;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getJsonValue';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'json': this.json, '@type': CONSTRUCTOR, '@extra': this.extra};
}
