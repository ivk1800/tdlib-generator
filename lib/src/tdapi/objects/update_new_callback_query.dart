part of '../tdapi.dart';

/// Group.Objects
/// A new incoming callback query; for bots only
class UpdateNewCallbackQuery extends Update {
  UpdateNewCallbackQuery(
      {required this.id,
      required this.senderUserId,
      required this.chatId,
      required this.messageId,
      required this.chatInstance,
      required this.payload});

  /// id Unique query identifier
  final int id;

  /// sender_user_id Identifier of the user who sent the query
  final int senderUserId;

  /// chat_id Identifier of the chat where the query was sent
  final int chatId;

  /// message_id Identifier of the message, from which the query originated
  final int messageId;

  /// chat_instance Identifier that uniquely corresponds to the chat to which the message was sent
  final int chatInstance;

  /// payload Query payload
  final CallbackQueryPayload payload;

  static const String CONSTRUCTOR = 'updateNewCallbackQuery';

  static UpdateNewCallbackQuery? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewCallbackQuery(
        id: int.tryParse(json['id']) ?? 0,
        senderUserId: json['sender_user_id'],
        chatId: json['chat_id'],
        messageId: json['message_id'],
        chatInstance: int.tryParse(json['chat_instance']) ?? 0,
        payload: CallbackQueryPayload.fromJson(json['payload'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'sender_user_id': this.senderUserId,
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'chat_instance': this.chatInstance,
        'payload': this.payload,
        '@type': CONSTRUCTOR
      };
}
