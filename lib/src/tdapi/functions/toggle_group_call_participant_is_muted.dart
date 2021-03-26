import '../tdapi.dart';

/// Toggles whether a group call participant is muted, unmuted, or allowed to
/// themself
/// Returns [Ok]
class ToggleGroupCallParticipantIsMuted extends TdFunction {
  ToggleGroupCallParticipantIsMuted(
      {required this.groupCallId, required this.userId, required this.isMuted});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [userId] User identifier
  final int userId;

  /// [isMuted] Pass true if the user must be muted and false otherwise
  final bool isMuted;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'toggleGroupCallParticipantIsMuted';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'user_id': this.userId,
        'is_muted': this.isMuted,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
