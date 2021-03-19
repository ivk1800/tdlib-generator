part of '../tdapi.dart';

/// Group.Functions
/// Changes the password for the user. If a new recovery email address is specified, then the change will not be applied until the new recovery email address is confirmed
class SetPassword extends TdFunction {
  SetPassword(
      {required this.oldPassword,
      required this.newPassword,
      required this.newHint,
      required this.setRecoveryEmailAddress,
      required this.newRecoveryEmailAddress});

  /// old_password Previous password of the user
  final String oldPassword;

  /// new_password New password of the user; may be empty to remove the password
  final String newPassword;

  /// new_hint New password hint; may be empty
  final String newHint;

  /// set_recovery_email_address Pass true if the recovery email address should be changed
  final bool setRecoveryEmailAddress;

  /// new_recovery_email_address New recovery email address; may be empty
  final String newRecoveryEmailAddress;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'setPassword';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'old_password': this.oldPassword,
        'new_password': this.newPassword,
        'new_hint': this.newHint,
        'set_recovery_email_address': this.setRecoveryEmailAddress,
        'new_recovery_email_address': this.newRecoveryEmailAddress,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
