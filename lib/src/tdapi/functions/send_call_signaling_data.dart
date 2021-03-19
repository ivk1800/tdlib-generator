part of '../tdapi.dart';

/// Group.Functions
/// Sends call signaling data
class SendCallSignalingData extends TdFunction {
  SendCallSignalingData({required this.callId, required this.data});

  /// call_id Call identifier
  final int callId;

  /// data The data
  final String data;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'sendCallSignalingData';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'call_id': this.callId,
        'data': this.data,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
