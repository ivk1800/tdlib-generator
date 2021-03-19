part of '../tdapi.dart';

/// Group.Functions
/// Returns an invoice payment form. This method should be called when the user presses inlineKeyboardButtonBuy
class GetPaymentForm extends TdFunction {
  GetPaymentForm({required this.chatId, required this.messageId});

  /// chat_id Chat identifier of the Invoice message
  final int chatId;

  /// message_id Message identifier
  final int messageId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getPaymentForm';

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
