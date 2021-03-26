import '../tdapi.dart';

/// Re-sends the code to verify an email address to be added to a user's
/// Passport
/// Returns [EmailAddressAuthenticationCodeInfo]
class ResendEmailAddressVerificationCode extends TdFunction {
  ResendEmailAddressVerificationCode({this.extra});

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'resendEmailAddressVerificationCode';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
