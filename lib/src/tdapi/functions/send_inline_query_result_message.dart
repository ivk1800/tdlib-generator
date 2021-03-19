part of '../tdapi.dart';

/// Group.Functions
/// Sends the result of an inline query as a message. Returns the sent message. Always clears a chat draft message
class SendInlineQueryResultMessage extends TdFunction {
  SendInlineQueryResultMessage(
      {required this.chatId,
      required this.messageThreadId,
      required this.replyToMessageId,
      required this.options,
      required this.queryId,
      required this.resultId,
      required this.hideViaBot});

  /// chat_id Target chat
  final int chatId;

  /// message_thread_id If not 0, a message thread identifier in which the message will be sent
  final int messageThreadId;

  /// reply_to_message_id Identifier of a message to reply to or 0
  final int replyToMessageId;

  /// options Options to be used to send the message
  final MessageSendOptions options;

  /// query_id Identifier of the inline query
  final int queryId;

  /// result_id Identifier of the inline result
  final String resultId;

  /// hide_via_bot If true, there will be no mention of a bot, via which the message is sent. Can be used only for bots GetOption("animation_search_bot_username"), GetOption("photo_search_bot_username") and GetOption("venue_search_bot_username")
  final bool hideViaBot;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'sendInlineQueryResultMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_thread_id': this.messageThreadId,
        'reply_to_message_id': this.replyToMessageId,
        'options': this.options,
        'query_id': this.queryId,
        'result_id': this.resultId,
        'hide_via_bot': this.hideViaBot,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
