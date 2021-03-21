import '../tdapi.dart';

/// Re-sends the code to verify a phone number to be added to a user's
/// Passport
class ResendPhoneNumberVerificationCode extends TdFunction {
  ResendPhoneNumberVerificationCode();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'resendPhoneNumberVerificationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
