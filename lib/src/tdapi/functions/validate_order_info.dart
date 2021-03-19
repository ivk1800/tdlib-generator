part of '../tdapi.dart';

/// Group.Functions
/// Validates the order information provided by a user and returns the available shipping options for a flexible invoice
class ValidateOrderInfo extends TdFunction {
  ValidateOrderInfo(
      {required this.chatId,
      required this.messageId,
      required this.orderInfo,
      required this.allowSave});

  /// chat_id Chat identifier of the Invoice message
  final int chatId;

  /// message_id Message identifier
  final int messageId;

  /// order_info The order information, provided by the user
  final OrderInfo orderInfo;

  /// allow_save True, if the order information can be saved
  final bool allowSave;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'validateOrderInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'order_info': this.orderInfo,
        'allow_save': this.allowSave,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
