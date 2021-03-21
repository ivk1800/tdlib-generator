import '../tdapi.dart';

/// Edits the content of a live location in an inline message sent via a bot;
/// bots only
class EditInlineMessageLiveLocation extends TdFunction {
  EditInlineMessageLiveLocation(
      {required this.inlineMessageId,
      required this.replyMarkup,
      Location? this.location,
      required this.heading,
      required this.proximityAlertRadius});

  /// [inlineMessageId] Inline message identifier
  final String inlineMessageId;

  /// [replyMarkup] The new message reply markup
  final ReplyMarkup replyMarkup;

  /// [location] New location content of the message; may be null. Pass null to
  /// sharing the live location
  final Location? location;

  /// [heading] The new direction in which the location moves, in degrees;
  /// Pass 0 if unknown
  final int heading;

  /// [proximityAlertRadius] The new maximum distance for proximity alerts, in
  /// (0-100000). Pass 0 if the notification is disabled
  final int proximityAlertRadius;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'editInlineMessageLiveLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'inline_message_id': this.inlineMessageId,
        'reply_markup': this.replyMarkup,
        'location': this.location,
        'heading': this.heading,
        'proximity_alert_radius': this.proximityAlertRadius,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
