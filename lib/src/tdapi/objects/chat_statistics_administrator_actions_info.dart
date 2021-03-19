part of '../tdapi.dart';

/// Group.Objects
/// Contains statistics about administrator actions done by a user
class ChatStatisticsAdministratorActionsInfo extends TdObject {
  ChatStatisticsAdministratorActionsInfo(
      {required this.userId,
      required this.deletedMessageCount,
      required this.bannedUserCount,
      required this.restrictedUserCount});

  /// user_id Administrator user identifier
  final int userId;

  /// deleted_message_count Number of messages deleted by the administrator
  final int deletedMessageCount;

  /// banned_user_count Number of users banned by the administrator
  final int bannedUserCount;

  /// restricted_user_count Number of users restricted by the administrator
  final int restrictedUserCount;

  static const String CONSTRUCTOR = 'chatStatisticsAdministratorActionsInfo';

  static ChatStatisticsAdministratorActionsInfo? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatStatisticsAdministratorActionsInfo(
        userId: json['user_id'],
        deletedMessageCount: json['deleted_message_count'],
        bannedUserCount: json['banned_user_count'],
        restrictedUserCount: json['restricted_user_count']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_id': this.userId,
        'deleted_message_count': this.deletedMessageCount,
        'banned_user_count': this.bannedUserCount,
        'restricted_user_count': this.restrictedUserCount,
        '@type': CONSTRUCTOR
      };
}
