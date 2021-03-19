part of '../tdapi.dart';

/// Group.Objects
/// Contains information about a successful payment
class PaymentReceipt extends TdObject {
  PaymentReceipt(
      {required this.date,
      required this.paymentsProviderUserId,
      required this.invoice,
      OrderInfo? this.orderInfo,
      ShippingOption? this.shippingOption,
      required this.credentialsTitle});

  /// date Point in time (Unix timestamp) when the payment was made
  final int date;

  /// payments_provider_user_id User identifier of the payment provider bot
  final int paymentsProviderUserId;

  /// invoice Contains information about the invoice
  final Invoice invoice;

  /// order_info Contains order information; may be null
  final OrderInfo? orderInfo;

  /// shipping_option Chosen shipping option; may be null
  final ShippingOption? shippingOption;

  /// credentials_title Title of the saved credentials
  final String credentialsTitle;

  static const String CONSTRUCTOR = 'paymentReceipt';

  static PaymentReceipt? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentReceipt(
        date: json['date'],
        paymentsProviderUserId: json['payments_provider_user_id'],
        invoice: Invoice.fromJson(json['invoice'])!,
        orderInfo: OrderInfo.fromJson(json['order_info']),
        shippingOption: ShippingOption.fromJson(json['shipping_option']),
        credentialsTitle: json['credentials_title']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'date': this.date,
        'payments_provider_user_id': this.paymentsProviderUserId,
        'invoice': this.invoice,
        'order_info': this.orderInfo,
        'shipping_option': this.shippingOption,
        'credentials_title': this.credentialsTitle,
        '@type': CONSTRUCTOR
      };
}
