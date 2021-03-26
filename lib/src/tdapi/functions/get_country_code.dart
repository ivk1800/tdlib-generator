import '../tdapi.dart';

/// Uses the current IP address to find the current country. Returns
/// ISO 3166-1 alpha-2 country code. Can be called before authorization
/// Returns [Text]
class GetCountryCode extends TdFunction {
  GetCountryCode({this.extra});

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getCountryCode';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
