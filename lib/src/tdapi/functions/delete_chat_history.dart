import '../tdapi.dart';

/// Deletes all messages in the chat. Use Chat.can_be_deleted_only_for_self
/// Chat.can_be_deleted_for_all_users fields to find whether and how the
/// can be applied to the chat
class DeleteChatHistory extends TdFunction {
  DeleteChatHistory(
      {required this.chatId,
      required this.removeFromChatList,
      required this.revoke});

  /// [chatId] Chat identifier
  final int chatId;

  /// [removeFromChatList] Pass true if the chat should be removed from the chat
  ///
  final bool removeFromChatList;

  /// [revoke] Pass true to try to delete chat history for all users
  final bool revoke;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'deleteChatHistory';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'remove_from_chat_list': this.removeFromChatList,
        'revoke': this.revoke,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
