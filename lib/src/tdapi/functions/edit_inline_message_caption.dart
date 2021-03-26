import '../tdapi.dart';

/// Edits the caption of an inline message sent via a bot; for bots only
/// Returns [Ok]
class EditInlineMessageCaption extends TdFunction {
  EditInlineMessageCaption(
      {required this.inlineMessageId,
      required this.replyMarkup,
      required this.caption,
      this.extra});

  /// [inlineMessageId] Inline message identifier
  final String inlineMessageId;

  /// [replyMarkup] The new message reply markup
  final ReplyMarkup replyMarkup;

  /// [caption] New message content caption;
  /// characters
  final FormattedText caption;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'editInlineMessageCaption';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'inline_message_id': this.inlineMessageId,
        'reply_markup': this.replyMarkup.toJson(),
        'caption': this.caption.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
