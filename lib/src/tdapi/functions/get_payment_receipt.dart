import '../tdapi.dart';

/// Returns information about a successful payment
/// Returns [PaymentReceipt]
class GetPaymentReceipt extends TdFunction {
  GetPaymentReceipt(
      {required this.chatId, required this.messageId, this.extra});

  /// [chatId] Chat identifier of the PaymentSuccessful message
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getPaymentReceipt';

  @override
  dynamic? getExtra() => this.extra;
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
