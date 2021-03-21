import '../tdapi.dart';

/// Computes time needed to receive a response from a Telegram server through
/// proxy. Can be called before authorization
class PingProxy extends TdFunction {
  PingProxy({required this.proxyId});

  /// [proxyId] Proxy identifier. Use 0 to ping a Telegram server without a
  final int proxyId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'pingProxy';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'proxy_id': this.proxyId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
