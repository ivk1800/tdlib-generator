part of '../tdapi.dart';

/// Group.Objects
/// A new incoming pre-checkout query; for bots only. Contains full information about a checkout
class UpdateNewPreCheckoutQuery extends Update {
  UpdateNewPreCheckoutQuery(
      {required this.id,
      required this.senderUserId,
      required this.currency,
      required this.totalAmount,
      required this.invoicePayload,
      required this.shippingOptionId,
      OrderInfo? this.orderInfo});

  /// id Unique query identifier
  final int id;

  /// sender_user_id Identifier of the user who sent the query
  final int senderUserId;

  /// currency Currency for the product price
  final String currency;

  /// total_amount Total price for the product, in the minimal quantity of the currency
  final int totalAmount;

  /// invoice_payload Invoice payload
  final String invoicePayload;

  /// shipping_option_id Identifier of a shipping option chosen by the user; may be empty if not applicable
  final String shippingOptionId;

  /// order_info Information about the order; may be null
  final OrderInfo? orderInfo;

  static const String CONSTRUCTOR = 'updateNewPreCheckoutQuery';

  static UpdateNewPreCheckoutQuery? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewPreCheckoutQuery(
        id: int.tryParse(json['id']) ?? 0,
        senderUserId: json['sender_user_id'],
        currency: json['currency'],
        totalAmount: json['total_amount'],
        invoicePayload: json['invoice_payload'],
        shippingOptionId: json['shipping_option_id'],
        orderInfo: OrderInfo.fromJson(json['order_info']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'sender_user_id': this.senderUserId,
        'currency': this.currency,
        'total_amount': this.totalAmount,
        'invoice_payload': this.invoicePayload,
        'shipping_option_id': this.shippingOptionId,
        'order_info': this.orderInfo,
        '@type': CONSTRUCTOR
      };
}
