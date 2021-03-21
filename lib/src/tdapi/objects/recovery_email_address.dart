import '../tdapi.dart';

/// Contains information about the current recovery email address
class RecoveryEmailAddress extends TdObject {
  RecoveryEmailAddress({required this.recoveryEmailAddress, this.extra});

  /// [recoveryEmailAddress] Recovery email address
  final String recoveryEmailAddress;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'recoveryEmailAddress';

  static RecoveryEmailAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RecoveryEmailAddress(
        recoveryEmailAddress: json['recovery_email_address']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'recovery_email_address': this.recoveryEmailAddress,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
