part of '../tdapi.dart';

/// Group.Functions
/// Removes a group of active notifications. Needs to be called only if the notification group is removed by the current user
class RemoveNotificationGroup extends TdFunction {
  RemoveNotificationGroup(
      {required this.notificationGroupId, required this.maxNotificationId});

  /// notification_group_id Notification group identifier
  final int notificationGroupId;

  /// max_notification_id The maximum identifier of removed notifications
  final int maxNotificationId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'removeNotificationGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'notification_group_id': this.notificationGroupId,
        'max_notification_id': this.maxNotificationId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
