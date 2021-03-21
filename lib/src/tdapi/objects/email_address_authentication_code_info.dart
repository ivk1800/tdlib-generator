import '../tdapi.dart';

/// Information about the email address authentication code that was sent
class EmailAddressAuthenticationCodeInfo extends TdObject {
  EmailAddressAuthenticationCodeInfo(
      {required this.emailAddressPattern, required this.length, this.extra});

  /// [emailAddressPattern] Pattern of the email address to which an
  /// code was sent
  final String emailAddressPattern;

  /// [length] Length of the code; 0 if unknown
  final int length;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'emailAddressAuthenticationCodeInfo';

  static EmailAddressAuthenticationCodeInfo? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmailAddressAuthenticationCodeInfo(
        emailAddressPattern: json['email_address_pattern'],
        length: json['length'],
        extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'email_address_pattern': this.emailAddressPattern,
        'length': this.length,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
