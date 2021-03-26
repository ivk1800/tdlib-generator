import '../tdapi.dart';

/// Returns approximate number of messages of the specified type in the chat
/// Returns [Count]
class GetChatMessageCount extends TdFunction {
  GetChatMessageCount(
      {required this.chatId, required this.filter, required this.returnLocal});

  /// [chatId] Identifier of the chat in which to count messages
  final int chatId;

  /// [filter] Filter for message content; searchMessagesFilterEmpty is
  /// in this function
  final SearchMessagesFilter filter;

  /// [returnLocal] If true, returns count that is available locally without
  /// network requests, returning -1 if the number of messages is unknown
  final bool returnLocal;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getChatMessageCount';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'filter': this.filter.toJson(),
        'return_local': this.returnLocal,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
