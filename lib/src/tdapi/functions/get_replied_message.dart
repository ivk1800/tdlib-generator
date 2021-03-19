part of '../tdapi.dart';

/// Group.Functions
/// Returns information about a message that is replied by a given message. Also returns the pinned message, the game message, and the invoice message for messages of the types messagePinMessage, messageGameScore, and messagePaymentSuccessful respectively
class GetRepliedMessage extends TdFunction {
  GetRepliedMessage({required this.chatId, required this.messageId});

  /// chat_id Identifier of the chat the message belongs to
  final int chatId;

  /// message_id Identifier of the message reply to which to get
  final int messageId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getRepliedMessage';

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
