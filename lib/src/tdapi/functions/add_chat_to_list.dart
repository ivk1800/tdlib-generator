part of '../tdapi.dart';

/// Group.Functions
/// Adds a chat to a chat list. A chat can't be simultaneously in Main and Archive chat lists, so it is automatically removed from another one if needed
class AddChatToList extends TdFunction {
  AddChatToList({required this.chatId, required this.chatList});

  /// chat_id Chat identifier
  final int chatId;

  /// chat_list The chat list. Use getChatListsToAddChat to get suitable chat lists
  final ChatList chatList;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'addChatToList';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'chat_list': this.chatList,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
