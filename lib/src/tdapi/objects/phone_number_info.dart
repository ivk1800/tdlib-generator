part of '../tdapi.dart';

/// Contains information about a phone number
class PhoneNumberInfo extends TdObject {
  PhoneNumberInfo(
      {CountryInfo? this.country,
      required this.countryCallingCode,
      required this.formattedPhoneNumber});

  /// [country] Information about the country to which the phone number belongs;
  /// be null
  final CountryInfo? country;

  /// [countryCallingCode] The part of the phone number denoting country calling
  /// or its part
  final String countryCallingCode;

  /// [formattedPhoneNumber] The phone number without country calling code
  /// accordingly to local rules
  final String formattedPhoneNumber;

  static const String CONSTRUCTOR = 'phoneNumberInfo';

  static PhoneNumberInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PhoneNumberInfo(
        country: CountryInfo.fromJson(json['country']),
        countryCallingCode: json['country_calling_code'],
        formattedPhoneNumber: json['formatted_phone_number']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'country': this.country,
        'country_calling_code': this.countryCallingCode,
        'formatted_phone_number': this.formattedPhoneNumber,
        '@type': CONSTRUCTOR
      };
}
