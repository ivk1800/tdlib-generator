part of '../tdapi.dart';

/// Group.Objects
/// Represents a user contact
class InputInlineQueryResultContact extends InputInlineQueryResult {
  InputInlineQueryResultContact(
      {required this.id,
      required this.contact,
      required this.thumbnailUrl,
      required this.thumbnailWidth,
      required this.thumbnailHeight,
      ReplyMarkup? this.replyMarkup,
      required this.inputMessageContent});

  /// id Unique identifier of the query result
  final String id;

  /// contact User contact
  final Contact contact;

  /// thumbnail_url URL of the result thumbnail, if it exists
  final String thumbnailUrl;

  /// thumbnail_width Thumbnail width, if known
  final int thumbnailWidth;

  /// thumbnail_height Thumbnail height, if known
  final int thumbnailHeight;

  /// reply_markup The message reply markup. Must be of type replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// input_message_content The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageLocation, InputMessageVenue or InputMessageContact
  final InputMessageContent inputMessageContent;

  static const String CONSTRUCTOR = 'inputInlineQueryResultContact';

  static InputInlineQueryResultContact? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultContact(
        id: json['id'],
        contact: Contact.fromJson(json['contact'])!,
        thumbnailUrl: json['thumbnail_url'],
        thumbnailWidth: json['thumbnail_width'],
        thumbnailHeight: json['thumbnail_height'],
        replyMarkup: ReplyMarkup.fromJson(json['reply_markup']),
        inputMessageContent:
            InputMessageContent.fromJson(json['input_message_content'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'contact': this.contact,
        'thumbnail_url': this.thumbnailUrl,
        'thumbnail_width': this.thumbnailWidth,
        'thumbnail_height': this.thumbnailHeight,
        'reply_markup': this.replyMarkup,
        'input_message_content': this.inputMessageContent,
        '@type': CONSTRUCTOR
      };
}
