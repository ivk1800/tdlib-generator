part of '../tdapi.dart';

/// Re-sends the authentication code sent to confirm a new phone number for the user. Works only if the previously received authenticationCodeInfo next_code_type was not null
class ResendChangePhoneNumberCode extends TdFunction {
  ResendChangePhoneNumberCode();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'resendChangePhoneNumberCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
