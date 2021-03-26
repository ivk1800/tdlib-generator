import '../tdapi.dart';

/// An object of this type is returned on a successful function call for
/// functions
class Ok extends TdObject {
  const Ok({this.extra});

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'ok';

  static Ok? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Ok(extra: json['@extra']);
  }

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
