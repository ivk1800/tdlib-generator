part of '../tdapi.dart';

/// Group.Objects
/// Represents a link to an MP3 audio file
class InputInlineQueryResultAudio extends InputInlineQueryResult {
  InputInlineQueryResultAudio(
      {required this.id,
      required this.title,
      required this.performer,
      required this.audioUrl,
      required this.audioDuration,
      ReplyMarkup? this.replyMarkup,
      required this.inputMessageContent});

  /// id Unique identifier of the query result
  final String id;

  /// title Title of the audio file
  final String title;

  /// performer Performer of the audio file
  final String performer;

  /// audio_url The URL of the audio file
  final String audioUrl;

  /// audio_duration Audio file duration, in seconds
  final int audioDuration;

  /// reply_markup The message reply markup. Must be of type replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// input_message_content The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageAudio, InputMessageLocation, InputMessageVenue or InputMessageContact
  final InputMessageContent inputMessageContent;

  static const String CONSTRUCTOR = 'inputInlineQueryResultAudio';

  static InputInlineQueryResultAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultAudio(
        id: json['id'],
        title: json['title'],
        performer: json['performer'],
        audioUrl: json['audio_url'],
        audioDuration: json['audio_duration'],
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
        'performer': this.performer,
        'audio_url': this.audioUrl,
        'audio_duration': this.audioDuration,
        'reply_markup': this.replyMarkup,
        'input_message_content': this.inputMessageContent,
        '@type': CONSTRUCTOR
      };
}
