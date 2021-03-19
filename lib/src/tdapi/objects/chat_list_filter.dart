part of '../tdapi.dart';

/// Group.Objects
/// A list of chats belonging to a chat filter
class ChatListFilter extends ChatList {
  ChatListFilter({required this.chatFilterId});

  /// chat_filter_id Chat filter identifier
  final int chatFilterId;

  static const String CONSTRUCTOR = 'chatListFilter';

  static ChatListFilter? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatListFilter(chatFilterId: json['chat_filter_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_filter_id': this.chatFilterId, '@type': CONSTRUCTOR};
}
