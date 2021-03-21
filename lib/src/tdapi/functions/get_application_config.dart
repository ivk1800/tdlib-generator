part of '../tdapi.dart';

/// Returns application config, provided by the server. Can be called before
class GetApplicationConfig extends TdFunction {
  GetApplicationConfig();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getApplicationConfig';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
