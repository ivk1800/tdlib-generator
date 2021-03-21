part of '../tdapi.dart';

/// Enables a proxy. Only one proxy can be enabled at a time. Can be called
/// authorization
class EnableProxy extends TdFunction {
  EnableProxy({required this.proxyId});

  /// [proxyId] Proxy identifier
  final int proxyId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'enableProxy';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'proxy_id': this.proxyId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
