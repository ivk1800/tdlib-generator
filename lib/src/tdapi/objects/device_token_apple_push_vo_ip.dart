part of '../tdapi.dart';

/// Group.Objects
/// A token for Apple Push Notification service VoIP notifications
class DeviceTokenApplePushVoIP extends DeviceToken {
  DeviceTokenApplePushVoIP(
      {required this.deviceToken,
      required this.isAppSandbox,
      required this.encrypt});

  /// device_token Device token; may be empty to de-register a device
  final String deviceToken;

  /// is_app_sandbox True, if App Sandbox is enabled
  final bool isAppSandbox;

  /// encrypt True, if push notifications should be additionally encrypted
  final bool encrypt;

  static const String CONSTRUCTOR = 'deviceTokenApplePushVoIP';

  static DeviceTokenApplePushVoIP? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenApplePushVoIP(
        deviceToken: json['device_token'],
        isAppSandbox: json['is_app_sandbox'],
        encrypt: json['encrypt']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'device_token': this.deviceToken,
        'is_app_sandbox': this.isAppSandbox,
        'encrypt': this.encrypt,
        '@type': CONSTRUCTOR
      };
}
