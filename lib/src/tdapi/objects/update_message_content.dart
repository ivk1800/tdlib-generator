part of '../tdapi.dart';

/// Group.Objects
/// The message content has changed
class UpdateMessageContent extends Update {
  UpdateMessageContent(
      {required this.chatId,
      required this.messageId,
      required this.newContent});

  /// chat_id Chat identifier
  final int chatId;

  /// message_id Message identifier
  final int messageId;

  /// new_content New message content
  final MessageContent newContent;

  static const String CONSTRUCTOR = 'updateMessageContent';

  static UpdateMessageContent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageContent(
        chatId: json['chat_id'],
        messageId: json['message_id'],
        newContent: MessageContent.fromJson(json['new_content'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'new_content': this.newContent,
        '@type': CONSTRUCTOR
      };
}
