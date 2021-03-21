import '../tdapi.dart';

/// A voice chat participant was muted or unmuted
class ChatEventVoiceChatParticipantIsMutedToggled extends ChatEventAction {
  ChatEventVoiceChatParticipantIsMutedToggled(
      {required this.userId, required this.isMuted});

  /// [userId] Identifier of the affected user
  final int userId;

  /// [isMuted] New value of is_muted
  final bool isMuted;

  static const String CONSTRUCTOR =
      'chatEventVoiceChatParticipantIsMutedToggled';

  static ChatEventVoiceChatParticipantIsMutedToggled? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventVoiceChatParticipantIsMutedToggled(
        userId: json['user_id'], isMuted: json['is_muted']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'user_id': this.userId, 'is_muted': this.isMuted, '@type': CONSTRUCTOR};
}
