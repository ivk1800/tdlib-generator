part of '../tdapi.dart';

/// Group.Functions
/// Changes the notification settings of a chat. Notification settings of a chat with the current user (Saved Messages) can't be changed
class SetChatNotificationSettings extends TdFunction {
  SetChatNotificationSettings(
      {required this.chatId, required this.notificationSettings});

  /// chat_id Chat identifier
  final int chatId;

  /// notification_settings New notification settings for the chat. If the chat is muted for more than 1 week, it is considered to be muted forever
  final ChatNotificationSettings notificationSettings;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'setChatNotificationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'notification_settings': this.notificationSettings,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
