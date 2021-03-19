part of '../tdapi.dart';

/// Group.Functions
/// Returns information about a successful payment
class GetPaymentReceipt extends TdFunction {
  GetPaymentReceipt({required this.chatId, required this.messageId});

  /// chat_id Chat identifier of the PaymentSuccessful message
  final int chatId;

  /// message_id Message identifier
  final int messageId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getPaymentReceipt';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
