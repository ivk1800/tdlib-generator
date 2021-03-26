import '../tdapi.dart';

/// Forwards previously sent messages. Returns the forwarded messages in the
/// order as the message identifiers passed in message_ids. If a message can't
/// forwarded, null will be returned instead of the message
/// Returns [Messages]
class ForwardMessages extends TdFunction {
  ForwardMessages(
      {required this.chatId,
      required this.fromChatId,
      required this.messageIds,
      required this.options,
      required this.sendCopy,
      required this.removeCaption});

  /// [chatId] Identifier of the chat to which to forward messages
  final int chatId;

  /// [fromChatId] Identifier of the chat from which to forward messages
  final int fromChatId;

  /// [messageIds] Identifiers of the messages to forward. Message identifiers
  /// be in a strictly increasing order. At most 100 messages can be forwarded
  final List<int> messageIds;

  /// [options] Options to be used to send the messages
  final MessageSendOptions options;

  /// [sendCopy] True, if content of the messages needs to be copied without
  /// to the original messages. Always true if the messages are forwarded to a
  /// chat
  final bool sendCopy;

  /// [removeCaption] True, if media caption of message copies needs to be
  /// Ignored if send_copy is false
  final bool removeCaption;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'forwardMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'from_chat_id': this.fromChatId,
        'message_ids': messageIds.map((item) => item).toList(),
        'options': this.options.toJson(),
        'send_copy': this.sendCopy,
        'remove_caption': this.removeCaption,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
