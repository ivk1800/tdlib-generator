import '../tdapi.dart';

/// Returns an HTTPS link, which can be used to add a proxy. Available only
/// SOCKS5 and MTProto proxies. Can be called before authorization
/// Returns [Text]
class GetProxyLink extends TdFunction {
  GetProxyLink({required this.proxyId, this.extra});

  /// [proxyId] Proxy identifier
  final int proxyId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getProxyLink';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'proxy_id': this.proxyId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
