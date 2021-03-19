part of '../tdapi.dart';

/// Group.Objects
/// Describes a recently speaking user in a group call
class GroupCallRecentSpeaker extends TdObject {
  GroupCallRecentSpeaker({required this.userId, required this.isSpeaking});

  /// user_id User identifier
  final int userId;

  /// is_speaking True, is the user has spoken recently
  final bool isSpeaking;

  static const String CONSTRUCTOR = 'groupCallRecentSpeaker';

  static GroupCallRecentSpeaker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallRecentSpeaker(
        userId: json['user_id'], isSpeaking: json['is_speaking']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_id': this.userId,
        'is_speaking': this.isSpeaking,
        '@type': CONSTRUCTOR
      };
}
