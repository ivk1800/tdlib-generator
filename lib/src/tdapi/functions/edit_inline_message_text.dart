part of '../tdapi.dart';

/// Group.Functions
/// Edits the text of an inline text or game message sent via a bot; for bots only
class EditInlineMessageText extends TdFunction {
  EditInlineMessageText(
      {required this.inlineMessageId,
      required this.replyMarkup,
      required this.inputMessageContent});

  /// inline_message_id Inline message identifier
  final String inlineMessageId;

  /// reply_markup The new message reply markup
  final ReplyMarkup replyMarkup;

  /// input_message_content New text content of the message. Should be of type InputMessageText
  final InputMessageContent inputMessageContent;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'editInlineMessageText';

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
