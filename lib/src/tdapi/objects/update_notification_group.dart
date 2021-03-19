part of '../tdapi.dart';

/// Group.Objects
/// A list of active notifications in a notification group has changed
class UpdateNotificationGroup extends Update {
  UpdateNotificationGroup(
      {required this.notificationGroupId,
      required this.type,
      required this.chatId,
      required this.notificationSettingsChatId,
      required this.isSilent,
      required this.totalCount,
      required this.addedNotifications,
      required this.removedNotificationIds});

  /// notification_group_id Unique notification group identifier
  final int notificationGroupId;

  /// type New type of the notification group
  final NotificationGroupType type;

  /// chat_id Identifier of a chat to which all notifications in the group belong
  final int chatId;

  /// notification_settings_chat_id Chat identifier, which notification settings must be applied to the added notifications
  final int notificationSettingsChatId;

  /// is_silent True, if the notifications should be shown without sound
  final bool isSilent;

  /// total_count Total number of unread notifications in the group, can be bigger than number of active notifications
  final int totalCount;

  /// added_notifications List of added group notifications, sorted by notification ID
  final List<Notification> addedNotifications;

  /// removed_notification_ids Identifiers of removed group notifications, sorted by notification ID
  final List<int> removedNotificationIds;

  static const String CONSTRUCTOR = 'updateNotificationGroup';

  static UpdateNotificationGroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNotificationGroup(
        notificationGroupId: json['notification_group_id'],
        type: NotificationGroupType.fromJson(json['type'])!,
        chatId: json['chat_id'],
        notificationSettingsChatId: json['notification_settings_chat_id'],
        isSilent: json['is_silent'],
        totalCount: json['total_count'],
        addedNotifications: List<Notification>.from(
            (json['added_notifications}'] ?? [])
                .map((item) => Notification.fromJson(json['Notification'])!)
                .toList()),
        removedNotificationIds: List<int>.from(
            (json['removed_notification_ids}'] ?? [])
                .map((item) => json['int'])
                .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'notification_group_id': this.notificationGroupId,
        'type': this.type,
        'chat_id': this.chatId,
        'notification_settings_chat_id': this.notificationSettingsChatId,
        'is_silent': this.isSilent,
        'total_count': this.totalCount,
        'added_notifications': this.addedNotifications,
        'removed_notification_ids': this.removedNotificationIds,
        '@type': CONSTRUCTOR
      };
}
