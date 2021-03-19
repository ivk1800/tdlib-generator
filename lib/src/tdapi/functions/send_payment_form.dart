part of '../tdapi.dart';

/// Group.Functions
/// Sends a filled-out payment form to the bot for final verification
class SendPaymentForm extends TdFunction {
  SendPaymentForm(
      {required this.chatId,
      required this.messageId,
      required this.orderInfoId,
      required this.shippingOptionId,
      required this.credentials});

  /// chat_id Chat identifier of the Invoice message
  final int chatId;

  /// message_id Message identifier
  final int messageId;

  /// order_info_id Identifier returned by ValidateOrderInfo, or an empty string
  final String orderInfoId;

  /// shipping_option_id Identifier of a chosen shipping option, if applicable
  final String shippingOptionId;

  /// credentials The credentials chosen by user for payment
  final InputCredentials credentials;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'sendPaymentForm';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'order_info_id': this.orderInfoId,
        'shipping_option_id': this.shippingOptionId,
        'credentials': this.credentials,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
