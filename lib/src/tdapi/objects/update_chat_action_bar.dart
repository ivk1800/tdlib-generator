part of '../tdapi.dart';

/// Group.Objects
/// The chat action bar was changed
class UpdateChatActionBar extends Update {
  UpdateChatActionBar({required this.chatId, ChatActionBar? this.actionBar});

  /// chat_id Chat identifier
  final int chatId;

  /// action_bar The new value of the action bar; may be null
  final ChatActionBar? actionBar;

  static const String CONSTRUCTOR = 'updateChatActionBar';

  static UpdateChatActionBar? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatActionBar(
        chatId: json['chat_id'],
        actionBar: ChatActionBar.fromJson(json['action_bar']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'action_bar': this.actionBar,
        '@type': CONSTRUCTOR
      };
}
