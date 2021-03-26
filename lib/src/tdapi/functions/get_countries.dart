import '../tdapi.dart';

/// Returns information about existing countries. Can be called before
/// Returns [Countries]
class GetCountries extends TdFunction {
  GetCountries();

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getCountries';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
