part of '../tdapi.dart';

/// Group.Functions
/// Adds a local message to a chat. The message is persistent across application restarts only if the message database is used. Returns the added message
class AddLocalMessage extends TdFunction {
  AddLocalMessage(
      {required this.chatId,
      required this.sender,
      required this.replyToMessageId,
      required this.disableNotification,
      required this.inputMessageContent});

  /// chat_id Target chat
  final int chatId;

  /// sender The sender sender of the message
  final MessageSender sender;

  /// reply_to_message_id Identifier of the message to reply to or 0
  final int replyToMessageId;

  /// disable_notification Pass true to disable notification for the message
  final bool disableNotification;

  /// input_message_content The content of the message to be added
  final InputMessageContent inputMessageContent;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'addLocalMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'sender': this.sender,
        'reply_to_message_id': this.replyToMessageId,
        'disable_notification': this.disableNotification,
        'input_message_content': this.inputMessageContent,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
