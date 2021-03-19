part of '../tdapi.dart';

/// Group.Functions
/// Changes the 2-step verification recovery email address of the user. If a new recovery email address is specified, then the change will not be applied until the new recovery email address is confirmed.. If new_recovery_email_address is the same as the email address that is currently set up, this call succeeds immediately and aborts all other requests waiting for an email confirmation
class SetRecoveryEmailAddress extends TdFunction {
  SetRecoveryEmailAddress(
      {required this.password, required this.newRecoveryEmailAddress});

  /// password Password of the current user
  final String password;

  /// new_recovery_email_address New recovery email address
  final String newRecoveryEmailAddress;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'setRecoveryEmailAddress';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'password': this.password,
        'new_recovery_email_address': this.newRecoveryEmailAddress,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
