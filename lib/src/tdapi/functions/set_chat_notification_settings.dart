import '../tdapi.dart';

/// Changes the notification settings of a chat. Notification settings of a
/// with the current user (Saved Messages) can't be changed
/// Returns [Ok]
class SetChatNotificationSettings extends TdFunction {
  SetChatNotificationSettings(
      {required this.chatId, required this.notificationSettings, this.extra});

  /// [chatId] Chat identifier
  final int chatId;

  /// [notificationSettings] New notification settings for the chat. If the chat
  /// muted for more than 1 week, it is considered to be muted forever
  final ChatNotificationSettings notificationSettings;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'setChatNotificationSettings';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'notification_settings': this.notificationSettings.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
