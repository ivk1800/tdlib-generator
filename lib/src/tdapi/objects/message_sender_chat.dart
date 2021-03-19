part of '../tdapi.dart';

/// Group.Objects
/// The message was sent on behalf of a chat
class MessageSenderChat extends MessageSender {
  MessageSenderChat({required this.chatId});

  /// chat_id Identifier of the chat that sent the message
  final int chatId;

  static const String CONSTRUCTOR = 'messageSenderChat';

  static MessageSenderChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSenderChat(chatId: json['chat_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR};
}
