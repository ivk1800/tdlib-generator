part of '../tdapi.dart';

/// Group.Objects
/// Describes a group of notifications
class NotificationGroup extends TdObject {
  NotificationGroup(
      {required this.id,
      required this.type,
      required this.chatId,
      required this.totalCount,
      required this.notifications});

  /// id Unique persistent auto-incremented from 1 identifier of the notification group
  final int id;

  /// type Type of the group
  final NotificationGroupType type;

  /// chat_id Identifier of a chat to which all notifications in the group belong
  final int chatId;

  /// total_count Total number of active notifications in the group
  final int totalCount;

  /// notifications The list of active notifications
  final List<Notification> notifications;

  static const String CONSTRUCTOR = 'notificationGroup';

  static NotificationGroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NotificationGroup(
        id: json['id'],
        type: NotificationGroupType.fromJson(json['type'])!,
        chatId: json['chat_id'],
        totalCount: json['total_count'],
        notifications: List<Notification>.from((json['notifications}'] ?? [])
            .map((item) => Notification.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'type': this.type,
        'chat_id': this.chatId,
        'total_count': this.totalCount,
        'notifications': this.notifications,
        '@type': CONSTRUCTOR
      };
}
