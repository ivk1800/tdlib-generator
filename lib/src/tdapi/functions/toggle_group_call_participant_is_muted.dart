part of '../tdapi.dart';

/// Group.Functions
/// Toggles whether a group call participant is muted, unmuted, or allowed to unmute themself
class ToggleGroupCallParticipantIsMuted extends TdFunction {
  ToggleGroupCallParticipantIsMuted(
      {required this.groupCallId, required this.userId, required this.isMuted});

  /// group_call_id Group call identifier
  final int groupCallId;

  /// user_id User identifier
  final int userId;

  /// is_muted Pass true if the user must be muted and false otherwise
  final bool isMuted;

  /// callback sign
  dynamic extra;

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
