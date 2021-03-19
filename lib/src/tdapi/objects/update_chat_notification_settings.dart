part of '../tdapi.dart';

/// Group.Objects
/// Notification settings for a chat were changed
class UpdateChatNotificationSettings extends Update {
  UpdateChatNotificationSettings(
      {required this.chatId, required this.notificationSettings});

  /// chat_id Chat identifier
  final int chatId;

  /// notification_settings The new notification settings
  final ChatNotificationSettings notificationSettings;

  static const String CONSTRUCTOR = 'updateChatNotificationSettings';

  static UpdateChatNotificationSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatNotificationSettings(
        chatId: json['chat_id'],
        notificationSettings:
            ChatNotificationSettings.fromJson(json['notification_settings'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'notification_settings': this.notificationSettings,
        '@type': CONSTRUCTOR
      };
}
