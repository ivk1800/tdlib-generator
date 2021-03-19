part of '../tdapi.dart';

/// Group.Objects
/// A video note message
class MessageVideoNote extends MessageContent {
  MessageVideoNote(
      {required this.videoNote,
      required this.isViewed,
      required this.isSecret});

  /// video_note The video note description
  final VideoNote videoNote;

  /// is_viewed True, if at least one of the recipients has viewed the video note
  final bool isViewed;

  /// is_secret True, if the video note thumbnail must be blurred and the video note must be shown only while tapped
  final bool isSecret;

  static const String CONSTRUCTOR = 'messageVideoNote';

  static MessageVideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageVideoNote(
        videoNote: VideoNote.fromJson(json['video_note'])!,
        isViewed: json['is_viewed'],
        isSecret: json['is_secret']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'video_note': this.videoNote,
        'is_viewed': this.isViewed,
        'is_secret': this.isSecret,
        '@type': CONSTRUCTOR
      };
}
