part of '../tdapi.dart';

/// Group.Functions
/// Returns approximate number of messages of the specified type in the chat
class GetChatMessageCount extends TdFunction {
  GetChatMessageCount(
      {required this.chatId, required this.filter, required this.returnLocal});

  /// chat_id Identifier of the chat in which to count messages
  final int chatId;

  /// filter Filter for message content; searchMessagesFilterEmpty is unsupported in this function
  final SearchMessagesFilter filter;

  /// return_local If true, returns count that is available locally without sending network requests, returning -1 if the number of messages is unknown
  final bool returnLocal;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getChatMessageCount';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'filter': this.filter,
        'return_local': this.returnLocal,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
