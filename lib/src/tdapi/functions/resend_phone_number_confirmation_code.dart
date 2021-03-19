part of '../tdapi.dart';

/// Group.Functions
/// Resends phone number confirmation code
class ResendPhoneNumberConfirmationCode extends TdFunction {
  ResendPhoneNumberConfirmationCode();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'resendPhoneNumberConfirmationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
