part of '../tdapi.dart';

/// Group.Objects
/// Order information
class OrderInfo extends TdObject {
  OrderInfo(
      {required this.name,
      required this.phoneNumber,
      required this.emailAddress,
      Address? this.shippingAddress});

  /// name Name of the user
  final String name;

  /// phone_number Phone number of the user
  final String phoneNumber;

  /// email_address Email address of the user
  final String emailAddress;

  /// shipping_address Shipping address for this order; may be null
  final Address? shippingAddress;

  static const String CONSTRUCTOR = 'orderInfo';

  static OrderInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OrderInfo(
        name: json['name'],
        phoneNumber: json['phone_number'],
        emailAddress: json['email_address'],
        shippingAddress: Address.fromJson(json['shipping_address']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'name': this.name,
        'phone_number': this.phoneNumber,
        'email_address': this.emailAddress,
        'shipping_address': this.shippingAddress,
        '@type': CONSTRUCTOR
      };
}
