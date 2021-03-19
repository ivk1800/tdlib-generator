part of '../tdapi.dart';

/// Group.Functions
/// Forwards previously sent messages. Returns the forwarded messages in the same order as the message identifiers passed in message_ids. If a message can't be forwarded, null will be returned instead of the message
class ForwardMessages extends TdFunction {
  ForwardMessages(
      {required this.chatId,
      required this.fromChatId,
      required this.messageIds,
      required this.options,
      required this.sendCopy,
      required this.removeCaption});

  /// chat_id Identifier of the chat to which to forward messages
  final int chatId;

  /// from_chat_id Identifier of the chat from which to forward messages
  final int fromChatId;

  /// message_ids Identifiers of the messages to forward. Message identifiers must be in a strictly increasing order. At most 100 messages can be forwarded simultaneously
  final List<int> messageIds;

  /// options Options to be used to send the messages
  final MessageSendOptions options;

  /// send_copy True, if content of the messages needs to be copied without links to the original messages. Always true if the messages are forwarded to a secret chat
  final bool sendCopy;

  /// remove_caption True, if media caption of message copies needs to be removed. Ignored if send_copy is false
  final bool removeCaption;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'forwardMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'from_chat_id': this.fromChatId,
        'message_ids': this.messageIds,
        'options': this.options,
        'send_copy': this.sendCopy,
        'remove_caption': this.removeCaption,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
