part of '../tdapi.dart';

/// Group.Functions
/// Returns the notification settings for chats of a given type
class GetScopeNotificationSettings extends TdFunction {
  GetScopeNotificationSettings({required this.scope});

  /// scope Types of chats for which to return the notification settings information
  final NotificationSettingsScope scope;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getScopeNotificationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'scope': this.scope, '@type': CONSTRUCTOR, '@extra': this.extra};
}
