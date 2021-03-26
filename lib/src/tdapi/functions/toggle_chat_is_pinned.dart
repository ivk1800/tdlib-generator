import '../tdapi.dart';

/// Changes the pinned state of a chat. There can be up to
/// pinned non-secret chats and the same number of secret chats in the
/// chat list
/// Returns [Ok]
class ToggleChatIsPinned extends TdFunction {
  ToggleChatIsPinned(
      {required this.chatList, required this.chatId, required this.isPinned});

  /// [chatList] Chat list in which to change the pinned state of the chat
  final ChatList chatList;

  /// [chatId] Chat identifier
  final int chatId;

  /// [isPinned] True, if the chat is pinned
  final bool isPinned;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'toggleChatIsPinned';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_list': this.chatList.toJson(),
        'chat_id': this.chatId,
        'is_pinned': this.isPinned,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
