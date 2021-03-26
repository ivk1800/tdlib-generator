import '../tdapi.dart';

/// Re-sends the authentication code sent to confirm a new phone number for
/// user. Works only if the previously received authenticationCodeInfo
/// was not null
/// Returns [AuthenticationCodeInfo]
class ResendChangePhoneNumberCode extends TdFunction {
  ResendChangePhoneNumberCode({this.extra});

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'resendChangePhoneNumberCode';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
