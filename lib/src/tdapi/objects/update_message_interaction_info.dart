part of '../tdapi.dart';

/// Group.Objects
/// The information about interactions with a message has changed
class UpdateMessageInteractionInfo extends Update {
  UpdateMessageInteractionInfo(
      {required this.chatId,
      required this.messageId,
      MessageInteractionInfo? this.interactionInfo});

  /// chat_id Chat identifier
  final int chatId;

  /// message_id Message identifier
  final int messageId;

  /// interaction_info New information about interactions with the message; may be null
  final MessageInteractionInfo? interactionInfo;

  static const String CONSTRUCTOR = 'updateMessageInteractionInfo';

  static UpdateMessageInteractionInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageInteractionInfo(
        chatId: json['chat_id'],
        messageId: json['message_id'],
        interactionInfo:
            MessageInteractionInfo.fromJson(json['interaction_info']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'interaction_info': this.interactionInfo,
        '@type': CONSTRUCTOR
      };
}
