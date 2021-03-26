import '../tdapi.dart';

/// Adds a chat to a chat list. A chat can't be simultaneously in Main and
/// chat lists, so it is automatically removed from another one if needed
/// Returns [Ok]
class AddChatToList extends TdFunction {
  AddChatToList({required this.chatId, required this.chatList});

  /// [chatId] Chat identifier
  final int chatId;

  /// [chatList] The chat list. Use getChatListsToAddChat to get suitable chat
  final ChatList chatList;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'addChatToList';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'chat_list': this.chatList.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
