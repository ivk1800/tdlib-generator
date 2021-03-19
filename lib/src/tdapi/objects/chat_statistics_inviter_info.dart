part of '../tdapi.dart';

/// Group.Objects
/// Contains statistics about number of new members invited by a user
class ChatStatisticsInviterInfo extends TdObject {
  ChatStatisticsInviterInfo(
      {required this.userId, required this.addedMemberCount});

  /// user_id User identifier
  final int userId;

  /// added_member_count Number of new members invited by the user
  final int addedMemberCount;

  static const String CONSTRUCTOR = 'chatStatisticsInviterInfo';

  static ChatStatisticsInviterInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatStatisticsInviterInfo(
        userId: json['user_id'], addedMemberCount: json['added_member_count']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_id': this.userId,
        'added_member_count': this.addedMemberCount,
        '@type': CONSTRUCTOR
      };
}
