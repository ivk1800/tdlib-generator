import '../tdapi.dart';

/// Resends phone number confirmation code
/// Returns [AuthenticationCodeInfo]
class ResendPhoneNumberConfirmationCode extends TdFunction {
  ResendPhoneNumberConfirmationCode({this.extra});

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'resendPhoneNumberConfirmationCode';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
