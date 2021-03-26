import '../tdapi.dart';

/// Returns list of proxies that are currently set up. Can be called before
/// Returns [Proxies]
class GetProxies extends TdFunction {
  GetProxies();

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getProxies';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
