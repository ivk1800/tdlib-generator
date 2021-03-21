part of '../tdapi.dart';

/// Edits the content of a message with an animation, an audio, a document, a
/// or a video in an inline message sent via a bot; for bots only
class EditInlineMessageMedia extends TdFunction {
  EditInlineMessageMedia(
      {required this.inlineMessageId,
      required this.replyMarkup,
      required this.inputMessageContent});

  /// [inlineMessageId] Inline message identifier
  final String inlineMessageId;

  /// [replyMarkup] The new message reply markup; for bots only
  final ReplyMarkup replyMarkup;

  /// [inputMessageContent] New content of the message. Must be one of the
  /// types: InputMessageAnimation, InputMessageAudio, InputMessageDocument,
  /// or InputMessageVideo
  final InputMessageContent inputMessageContent;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'editInlineMessageMedia';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'inline_message_id': this.inlineMessageId,
        'reply_markup': this.replyMarkup,
        'input_message_content': this.inputMessageContent,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
