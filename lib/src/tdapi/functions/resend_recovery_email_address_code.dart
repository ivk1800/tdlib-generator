import '../tdapi.dart';

/// Resends the 2-step verification recovery email address verification code
class ResendRecoveryEmailAddressCode extends TdFunction {
  ResendRecoveryEmailAddressCode();

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'resendRecoveryEmailAddressCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
