part of '../tdapi.dart';

/// Represents a group call participant
class GroupCallParticipant extends TdObject {
  GroupCallParticipant(
      {required this.userId,
      required this.source,
      required this.isSpeaking,
      required this.canBeMuted,
      required this.canBeUnmuted,
      required this.isMuted,
      required this.canUnmuteSelf,
      required this.order});

  /// [userId] Identifier of the user
  final int userId;

  /// [source] User's synchronization source
  final int source;

  /// [isSpeaking] True, if the participant is speaking as set by
  final bool isSpeaking;

  /// [canBeMuted] True, if the current user can mute the participant
  final bool canBeMuted;

  /// [canBeUnmuted] True, if the current user can allow the participant to
  /// themself or unmute the participant (only for self)
  final bool canBeUnmuted;

  /// [isMuted] True, if the participant is muted
  final bool isMuted;

  /// [canUnmuteSelf] True, if the participant can unmute themself
  final bool canUnmuteSelf;

  /// [order] User's order in the group call participant list. The bigger is
  /// the higher is user in the list. If order is 0, the user must be removed
  /// the participant list
  final int order;

  static const String CONSTRUCTOR = 'groupCallParticipant';

  static GroupCallParticipant? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallParticipant(
        userId: json['user_id'],
        source: json['source'],
        isSpeaking: json['is_speaking'],
        canBeMuted: json['can_be_muted'],
        canBeUnmuted: json['can_be_unmuted'],
        isMuted: json['is_muted'],
        canUnmuteSelf: json['can_unmute_self'],
        order: int.tryParse(json['order']) ?? 0);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_id': this.userId,
        'source': this.source,
        'is_speaking': this.isSpeaking,
        'can_be_muted': this.canBeMuted,
        'can_be_unmuted': this.canBeUnmuted,
        'is_muted': this.isMuted,
        'can_unmute_self': this.canUnmuteSelf,
        'order': this.order,
        '@type': CONSTRUCTOR
      };
}
