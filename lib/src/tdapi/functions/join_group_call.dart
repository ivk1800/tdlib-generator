import '../tdapi.dart';

/// Joins a group call
/// Returns [GroupCallJoinResponse]
class JoinGroupCall extends TdFunction {
  JoinGroupCall(
      {required this.groupCallId,
      required this.payload,
      required this.source,
      required this.isMuted});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [payload] Group join payload, received from tgcalls. Use null to cancel
  /// joinGroupCall request
  final GroupCallPayload payload;

  /// [source] Caller synchronization source identifier; received from tgcalls
  final int source;

  /// [isMuted] True, if the user's microphone is muted
  final bool isMuted;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'joinGroupCall';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'payload': this.payload.toJson(),
        'source': this.source,
        'is_muted': this.isMuted,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
