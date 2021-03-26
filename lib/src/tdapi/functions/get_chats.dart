import '../tdapi.dart';

/// Returns an ordered list of chats in a chat list. Chats are sorted by the
/// (chat.position.order, chat.id) in descending order. (For example, to get a
/// of chats from the beginning, the offset_order should be equal to a biggest
/// 64-bit number 9223372036854775807 == 2. For optimal performance the number
/// returned chats is chosen by the library
/// Returns [Chats]
class GetChats extends TdFunction {
  GetChats(
      {required this.chatList,
      required this.offsetOrder,
      required this.offsetChatId,
      required this.limit,
      this.extra});

  /// [chatList] The chat list in which to return chats
  final ChatList chatList;

  /// [offsetOrder] Chat order to return chats from
  final int offsetOrder;

  /// [offsetChatId] Chat identifier to return chats from
  final int offsetChatId;

  /// [limit] The maximum number of chats to be returned. It is possible that
  /// chats than the limit are returned even if the end of the list is not
  final int limit;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getChats';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_list': this.chatList.toJson(),
        'offset_order': this.offsetOrder,
        'offset_chat_id': this.offsetChatId,
        'limit': this.limit,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
