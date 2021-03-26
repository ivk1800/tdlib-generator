import '../tdapi.dart';

/// Re-sends the code to verify a phone number to be added to a user's
/// Passport
/// Returns [AuthenticationCodeInfo]
class ResendPhoneNumberVerificationCode extends TdFunction {
  ResendPhoneNumberVerificationCode();

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'resendPhoneNumberVerificationCode';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
