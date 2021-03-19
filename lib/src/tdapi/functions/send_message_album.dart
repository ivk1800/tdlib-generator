part of '../tdapi.dart';

/// Group.Functions
/// Sends 2-10 messages grouped together into an album. Currently only audio, document, photo and video messages can be grouped into an album. Documents and audio files can be only grouped in an album with messages of the same type. Returns sent messages
class SendMessageAlbum extends TdFunction {
  SendMessageAlbum(
      {required this.chatId,
      required this.messageThreadId,
      required this.replyToMessageId,
      required this.options,
      required this.inputMessageContents});

  /// chat_id Target chat
  final int chatId;

  /// message_thread_id If not 0, a message thread identifier in which the messages will be sent
  final int messageThreadId;

  /// reply_to_message_id Identifier of a message to reply to or 0
  final int replyToMessageId;

  /// options Options to be used to send the messages
  final MessageSendOptions options;

  /// input_message_contents Contents of messages to be sent. At most 10 messages can be added to an album
  final List<InputMessageContent> inputMessageContents;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'sendMessageAlbum';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_thread_id': this.messageThreadId,
        'reply_to_message_id': this.replyToMessageId,
        'options': this.options,
        'input_message_contents': this.inputMessageContents,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
