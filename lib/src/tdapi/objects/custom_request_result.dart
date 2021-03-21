import '../tdapi.dart';

/// Contains the result of a custom request
class CustomRequestResult extends TdObject {
  CustomRequestResult({required this.result, this.extra});

  /// [result] A JSON-serialized result
  final String result;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'customRequestResult';

  static CustomRequestResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CustomRequestResult(result: json['result'], extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'result': this.result, '@type': CONSTRUCTOR, '@extra': this.extra};
}
