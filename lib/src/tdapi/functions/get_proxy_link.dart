part of '../tdapi.dart';

/// Group.Functions
/// Returns an HTTPS link, which can be used to add a proxy. Available only for SOCKS5 and MTProto proxies. Can be called before authorization
class GetProxyLink extends TdFunction {
  GetProxyLink({required this.proxyId});

  /// proxy_id Proxy identifier
  final int proxyId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getProxyLink';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'proxy_id': this.proxyId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
