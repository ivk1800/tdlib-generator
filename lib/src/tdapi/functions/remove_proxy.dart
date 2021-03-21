import '../tdapi.dart';

/// Removes a proxy server. Can be called before authorization
class RemoveProxy extends TdFunction {
  RemoveProxy({required this.proxyId});

  /// [proxyId] Proxy identifier
  final int proxyId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'removeProxy';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'proxy_id': this.proxyId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
