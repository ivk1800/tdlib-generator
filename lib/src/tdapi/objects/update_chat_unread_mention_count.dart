part of '../tdapi.dart';

/// Group.Objects
/// The chat unread_mention_count has changed
class UpdateChatUnreadMentionCount extends Update {
  UpdateChatUnreadMentionCount(
      {required this.chatId, required this.unreadMentionCount});

  /// chat_id Chat identifier
  final int chatId;

  /// unread_mention_count The number of unread mention messages left in the chat
  final int unreadMentionCount;

  static const String CONSTRUCTOR = 'updateChatUnreadMentionCount';

  static UpdateChatUnreadMentionCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatUnreadMentionCount(
        chatId: json['chat_id'],
        unreadMentionCount: json['unread_mention_count']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'unread_mention_count': this.unreadMentionCount,
        '@type': CONSTRUCTOR
      };
}
