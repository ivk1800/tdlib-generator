part of '../tdapi.dart';

/// Changes notification settings for chats of a given type
class SetScopeNotificationSettings extends TdFunction {
  SetScopeNotificationSettings(
      {required this.scope, required this.notificationSettings});

  /// [scope] Types of chats for which to change the notification settings
  final NotificationSettingsScope scope;

  /// [notificationSettings] The new notification settings for the given scope
  final ScopeNotificationSettings notificationSettings;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'setScopeNotificationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'scope': this.scope,
        'notification_settings': this.notificationSettings,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
