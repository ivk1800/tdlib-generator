part of '../tdapi.dart';

/// Group.Functions
/// Changes the discussion group of a channel chat; requires can_change_info rights in the channel if it is specified
class SetChatDiscussionGroup extends TdFunction {
  SetChatDiscussionGroup(
      {required this.chatId, required this.discussionChatId});

  /// chat_id Identifier of the channel chat. Pass 0 to remove a link from the supergroup passed in the second argument to a linked channel chat (requires can_pin_messages rights in the supergroup)
  final int chatId;

  /// discussion_chat_id Identifier of a new channel's discussion group. Use 0 to remove the discussion group.. Use the method getSuitableDiscussionChats to find all suitable groups. Basic group chats must be first upgraded to supergroup chats. If new chat members don't have access to old messages in the supergroup, then toggleSupergroupIsAllHistoryAvailable must be used first to change that
  final int discussionChatId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'setChatDiscussionGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'discussion_chat_id': this.discussionChatId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
