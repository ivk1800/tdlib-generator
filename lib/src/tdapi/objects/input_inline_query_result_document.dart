part of '../tdapi.dart';

/// Group.Objects
/// Represents a link to a file
class InputInlineQueryResultDocument extends InputInlineQueryResult {
  InputInlineQueryResultDocument(
      {required this.id,
      required this.title,
      required this.description,
      required this.documentUrl,
      required this.mimeType,
      required this.thumbnailUrl,
      required this.thumbnailWidth,
      required this.thumbnailHeight,
      ReplyMarkup? this.replyMarkup,
      required this.inputMessageContent});

  /// id Unique identifier of the query result
  final String id;

  /// title Title of the resulting file
  final String title;

  /// param_description Short description of the result, if known
  final String description;

  /// document_url URL of the file
  final String documentUrl;

  /// mime_type MIME type of the file content; only "application/pdf" and "application/zip" are currently allowed
  final String mimeType;

  /// thumbnail_url The URL of the file thumbnail, if it exists
  final String thumbnailUrl;

  /// thumbnail_width Width of the thumbnail
  final int thumbnailWidth;

  /// thumbnail_height Height of the thumbnail
  final int thumbnailHeight;

  /// reply_markup The message reply markup. Must be of type replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// input_message_content The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageDocument, InputMessageLocation, InputMessageVenue or InputMessageContact
  final InputMessageContent inputMessageContent;

  static const String CONSTRUCTOR = 'inputInlineQueryResultDocument';

  static InputInlineQueryResultDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultDocument(
        id: json['id'],
        title: json['title'],
        description: json['description'],
        documentUrl: json['document_url'],
        mimeType: json['mime_type'],
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
        'title': this.title,
        'description': this.description,
        'document_url': this.documentUrl,
        'mime_type': this.mimeType,
        'thumbnail_url': this.thumbnailUrl,
        'thumbnail_width': this.thumbnailWidth,
        'thumbnail_height': this.thumbnailHeight,
        'reply_markup': this.replyMarkup,
        'input_message_content': this.inputMessageContent,
        '@type': CONSTRUCTOR
      };
}
