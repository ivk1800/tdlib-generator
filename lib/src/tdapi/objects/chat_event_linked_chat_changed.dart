part of '../tdapi.dart';

/// Group.Objects
/// The linked chat of a supergroup was changed
class ChatEventLinkedChatChanged extends ChatEventAction {
  ChatEventLinkedChatChanged(
      {required this.oldLinkedChatId, required this.newLinkedChatId});

  /// old_linked_chat_id Previous supergroup linked chat identifier
  final int oldLinkedChatId;

  /// new_linked_chat_id New supergroup linked chat identifier
  final int newLinkedChatId;

  static const String CONSTRUCTOR = 'chatEventLinkedChatChanged';

  static ChatEventLinkedChatChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventLinkedChatChanged(
        oldLinkedChatId: json['old_linked_chat_id'],
        newLinkedChatId: json['new_linked_chat_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'old_linked_chat_id': this.oldLinkedChatId,
        'new_linked_chat_id': this.newLinkedChatId,
        '@type': CONSTRUCTOR
      };
}
