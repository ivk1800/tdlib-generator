part of '../tdapi.dart';

/// Group.Functions
/// Registers the currently used device for receiving push notifications. Returns a globally unique identifier of the push notification subscription
class RegisterDevice extends TdFunction {
  RegisterDevice({required this.deviceToken, required this.otherUserIds});

  /// device_token Device token
  final DeviceToken deviceToken;

  /// other_user_ids List of user identifiers of other users currently using the application
  final List<int> otherUserIds;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'registerDevice';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'device_token': this.deviceToken,
        'other_user_ids': this.otherUserIds,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
