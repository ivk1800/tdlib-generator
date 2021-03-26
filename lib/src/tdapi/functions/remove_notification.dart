import '../tdapi.dart';

/// Removes an active notification from notification list. Needs to be called
/// if the notification is removed by the current user
/// Returns [Ok]
class RemoveNotification extends TdFunction {
  RemoveNotification(
      {required this.notificationGroupId,
      required this.notificationId,
      this.extra});

  /// [notificationGroupId] Identifier of notification group to which the
  /// belongs
  final int notificationGroupId;

  /// [notificationId] Identifier of removed notification
  final int notificationId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'removeNotification';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'notification_group_id': this.notificationGroupId,
        'notification_id': this.notificationId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
