part of '../tdapi.dart';

/// Group.Functions
/// Returns list of proxies that are currently set up. Can be called before authorization
class GetProxies extends TdFunction {
  GetProxies();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getProxies';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
