part of '../tdapi.dart';

/// Group.Functions
/// Converts a JsonValue object to corresponding JSON-serialized string. Can be called synchronously
class GetJsonString extends TdFunction {
  GetJsonString({required this.jsonValue});

  /// json_value The JsonValue object
  final JsonValue jsonValue;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getJsonString';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'json_value': this.jsonValue,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
