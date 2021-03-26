import '../tdapi.dart';

/// Recovers the password with a password recovery code sent to an email
/// that was previously set up. Works only when the current authorization
/// is authorizationStateWaitPassword
/// Returns [Ok]
class RecoverAuthenticationPassword extends TdFunction {
  RecoverAuthenticationPassword({required this.recoveryCode, this.extra});

  /// [recoveryCode] Recovery code to check
  final String recoveryCode;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'recoverAuthenticationPassword';

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
