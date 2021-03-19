part of '../tdapi.dart';

/// Group.Objects
/// Describes an address
class Address extends TdObject {
  Address(
      {required this.countryCode,
      required this.state,
      required this.city,
      required this.streetLine1,
      required this.streetLine2,
      required this.postalCode});

  /// country_code A two-letter ISO 3166-1 alpha-2 country code
  final String countryCode;

  /// state State, if applicable
  final String state;

  /// city City
  final String city;

  /// street_line1 First line of the address
  final String streetLine1;

  /// street_line2 Second line of the address
  final String streetLine2;

  /// postal_code Address postal code
  final String postalCode;

  static const String CONSTRUCTOR = 'address';

  static Address? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Address(
        countryCode: json['country_code'],
        state: json['state'],
        city: json['city'],
        streetLine1: json['street_line1'],
        streetLine2: json['street_line2'],
        postalCode: json['postal_code']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'country_code': this.countryCode,
        'state': this.state,
        'city': this.city,
        'street_line1': this.streetLine1,
        'street_line2': this.streetLine2,
        'postal_code': this.postalCode,
        '@type': CONSTRUCTOR
      };
}
