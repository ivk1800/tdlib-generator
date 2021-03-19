part of '../tdapi.dart';

/// Group.Objects
/// A message was edited. Changes in the message content will come in a separate updateMessageContent
class UpdateMessageEdited extends Update {
  UpdateMessageEdited(
      {required this.chatId,
      required this.messageId,
      required this.editDate,
      ReplyMarkup? this.replyMarkup});

  /// chat_id Chat identifier
  final int chatId;

  /// message_id Message identifier
  final int messageId;

  /// edit_date Point in time (Unix timestamp) when the message was edited
  final int editDate;

  /// reply_markup New message reply markup; may be null
  final ReplyMarkup? replyMarkup;

  static const String CONSTRUCTOR = 'updateMessageEdited';

  static UpdateMessageEdited? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageEdited(
        chatId: json['chat_id'],
        messageId: json['message_id'],
        editDate: json['edit_date'],
        replyMarkup: ReplyMarkup.fromJson(json['reply_markup']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'edit_date': this.editDate,
        'reply_markup': this.replyMarkup,
        '@type': CONSTRUCTOR
      };
}
