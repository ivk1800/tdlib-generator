part of '../tdapi.dart';

/// Group.Functions
/// Returns information about a message with the callback button that originated a callback query; for bots only
class GetCallbackQueryMessage extends TdFunction {
  GetCallbackQueryMessage(
      {required this.chatId,
      required this.messageId,
      required this.callbackQueryId});

  /// chat_id Identifier of the chat the message belongs to
  final int chatId;

  /// message_id Message identifier
  final int messageId;

  /// callback_query_id Identifier of the callback query
  final int callbackQueryId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getCallbackQueryMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'callback_query_id': this.callbackQueryId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
