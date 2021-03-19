part of '../tdapi.dart';

/// Group.Objects
/// Stripe payment provider
class PaymentsProviderStripe extends TdObject {
  PaymentsProviderStripe(
      {required this.publishableKey,
      required this.needCountry,
      required this.needPostalCode,
      required this.needCardholderName});

  /// publishable_key Stripe API publishable key
  final String publishableKey;

  /// need_country True, if the user country must be provided
  final bool needCountry;

  /// need_postal_code True, if the user ZIP/postal code must be provided
  final bool needPostalCode;

  /// need_cardholder_name True, if the cardholder name must be provided
  final bool needCardholderName;

  static const String CONSTRUCTOR = 'paymentsProviderStripe';

  static PaymentsProviderStripe? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentsProviderStripe(
        publishableKey: json['publishable_key'],
        needCountry: json['need_country'],
        needPostalCode: json['need_postal_code'],
        needCardholderName: json['need_cardholder_name']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'publishable_key': this.publishableKey,
        'need_country': this.needCountry,
        'need_postal_code': this.needPostalCode,
        'need_cardholder_name': this.needCardholderName,
        '@type': CONSTRUCTOR
      };
}
