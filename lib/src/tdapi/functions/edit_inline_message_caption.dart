part of '../tdapi.dart';

/// Group.Functions
/// Edits the caption of an inline message sent via a bot; for bots only
class EditInlineMessageCaption extends TdFunction {
  EditInlineMessageCaption(
      {required this.inlineMessageId,
      required this.replyMarkup,
      required this.caption});

  /// inline_message_id Inline message identifier
  final String inlineMessageId;

  /// reply_markup The new message reply markup
  final ReplyMarkup replyMarkup;

  /// caption New message content caption; 0-GetOption("message_caption_length_max") characters
  final FormattedText caption;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'editInlineMessageCaption';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'inline_message_id': this.inlineMessageId,
        'reply_markup': this.replyMarkup,
        'caption': this.caption,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
