import '../tdapi.dart';

/// Removes a group of active notifications. Needs to be called only if the
/// group is removed by the current user
class RemoveNotificationGroup extends TdFunction {
  RemoveNotificationGroup(
      {required this.notificationGroupId, required this.maxNotificationId});

  /// [notificationGroupId] Notification group identifier
  final int notificationGroupId;

  /// [maxNotificationId] The maximum identifier of removed notifications
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
