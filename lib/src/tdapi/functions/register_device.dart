import '../tdapi.dart';

/// Registers the currently used device for receiving push notifications.
/// a globally unique identifier of the push notification subscription
/// Returns [PushReceiverId]
class RegisterDevice extends TdFunction {
  RegisterDevice({required this.deviceToken, required this.otherUserIds});

  /// [deviceToken] Device token
  final DeviceToken deviceToken;

  /// [otherUserIds] List of user identifiers of other users currently using the
  final List<int> otherUserIds;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'registerDevice';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'device_token': this.deviceToken.toJson(),
        'other_user_ids': otherUserIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
