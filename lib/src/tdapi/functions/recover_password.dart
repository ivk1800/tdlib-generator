part of '../tdapi.dart';

/// Group.Functions
/// Recovers the password using a recovery code sent to an email address that was previously set up
class RecoverPassword extends TdFunction {
  RecoverPassword({required this.recoveryCode});

  /// recovery_code Recovery code to check
  final String recoveryCode;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'recoverPassword';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'recovery_code': this.recoveryCode,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
