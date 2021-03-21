import '../tdapi.dart';

/// Sends phone number confirmation code. Should be called when user presses
/// or "tg://confirmphone?phone=*******&hash=**********" link
class SendPhoneNumberConfirmationCode extends TdFunction {
  SendPhoneNumberConfirmationCode(
      {required this.hash, required this.phoneNumber, required this.settings});

  /// [hash] Value of the "hash" parameter from the link
  final String hash;

  /// [phoneNumber] Value of the "phone" parameter from the link
  final String phoneNumber;

  /// [settings] Settings for the authentication of the user's phone number
  final PhoneNumberAuthenticationSettings settings;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'sendPhoneNumberConfirmationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'hash': this.hash,
        'phone_number': this.phoneNumber,
        'settings': this.settings,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
