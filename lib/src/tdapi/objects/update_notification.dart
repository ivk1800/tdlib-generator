part of '../tdapi.dart';

/// Group.Objects
/// A notification was changed
class UpdateNotification extends Update {
  UpdateNotification(
      {required this.notificationGroupId, required this.notification});

  /// notification_group_id Unique notification group identifier
  final int notificationGroupId;

  /// notification_group_id Unique notification group identifier
  final Notification notification;

  static const String CONSTRUCTOR = 'updateNotification';

  static UpdateNotification? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNotification(
        notificationGroupId: json['notification_group_id'],
        notification: Notification.fromJson(json['notification'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'notification_group_id': this.notificationGroupId,
        'notification': this.notification,
        '@type': CONSTRUCTOR
      };
}
