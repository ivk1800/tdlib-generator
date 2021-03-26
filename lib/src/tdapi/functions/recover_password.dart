import '../tdapi.dart';

/// Recovers the password using a recovery code sent to an email address that
/// previously set up
/// Returns [PasswordState]
class RecoverPassword extends TdFunction {
  RecoverPassword({required this.recoveryCode, this.extra});

  /// [recoveryCode] Recovery code to check
  final String recoveryCode;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'recoverPassword';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'recovery_code': this.recoveryCode,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
