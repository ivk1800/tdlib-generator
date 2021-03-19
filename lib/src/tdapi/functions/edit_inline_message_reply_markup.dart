part of '../tdapi.dart';

/// Group.Functions
/// Edits the reply markup of an inline message sent via a bot; for bots only
class EditInlineMessageReplyMarkup extends TdFunction {
  EditInlineMessageReplyMarkup(
      {required this.inlineMessageId, required this.replyMarkup});

  /// inline_message_id Inline message identifier
  final String inlineMessageId;

  /// reply_markup The new message reply markup
  final ReplyMarkup replyMarkup;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'editInlineMessageReplyMarkup';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'inline_message_id': this.inlineMessageId,
        'reply_markup': this.replyMarkup,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
