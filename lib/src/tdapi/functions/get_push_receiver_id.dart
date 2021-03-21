part of '../tdapi.dart';

/// Returns a globally unique push notification subscription identifier for
/// of an account, which has received a push notification. Can be called
class GetPushReceiverId extends TdFunction {
  GetPushReceiverId({required this.payload});

  /// [payload] JSON-encoded push notification payload
  final String payload;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getPushReceiverId';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'payload': this.payload, '@type': CONSTRUCTOR, '@extra': this.extra};
}
