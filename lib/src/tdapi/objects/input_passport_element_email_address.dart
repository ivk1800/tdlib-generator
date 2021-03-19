part of '../tdapi.dart';

/// Group.Objects
/// A Telegram Passport element to be saved containing the user's email address
class InputPassportElementEmailAddress extends InputPassportElement {
  InputPassportElementEmailAddress({required this.emailAddress});

  /// email_address The email address to be saved
  final String emailAddress;

  static const String CONSTRUCTOR = 'inputPassportElementEmailAddress';

  static InputPassportElementEmailAddress? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementEmailAddress(
        emailAddress: json['email_address']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'email_address': this.emailAddress, '@type': CONSTRUCTOR};
}
