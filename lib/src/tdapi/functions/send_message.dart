part of '../tdapi.dart';

/// Group.Functions
/// Sends a message. Returns the sent message
class SendMessage extends TdFunction {
  SendMessage(
      {required this.chatId,
      required this.messageThreadId,
      required this.replyToMessageId,
      required this.options,
      required this.replyMarkup,
      required this.inputMessageContent});

  /// chat_id Target chat
  final int chatId;

  /// message_thread_id If not 0, a message thread identifier in which the message will be sent
  final int messageThreadId;

  /// reply_to_message_id Identifier of the message to reply to or 0
  final int replyToMessageId;

  /// options Options to be used to send the message
  final MessageSendOptions options;

  /// reply_markup Markup for replying to the message; for bots only
  final ReplyMarkup replyMarkup;

  /// input_message_content The content of the message to be sent
  final InputMessageContent inputMessageContent;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'sendMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_thread_id': this.messageThreadId,
        'reply_to_message_id': this.replyToMessageId,
        'options': this.options,
        'reply_markup': this.replyMarkup,
        'input_message_content': this.inputMessageContent,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
