part of '../tdapi.dart';

/// Sends a callback query to a bot and returns an answer. Returns an error with code 502 if the bot fails to answer the query before the query timeout expires
class GetCallbackQueryAnswer extends TdFunction {
  GetCallbackQueryAnswer(
      {required this.chatId, required this.messageId, required this.payload});

  /// [chatId] Identifier of the chat with the message
  final int chatId;

  /// [messageId] Identifier of the message from which the query originated
  final int messageId;

  /// [payload] Query payload
  final CallbackQueryPayload payload;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getCallbackQueryAnswer';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'payload': this.payload,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
