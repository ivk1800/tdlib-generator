part of '../tdapi.dart';

/// Group.Objects
/// A voice note message
class MessageVoiceNote extends MessageContent {
  MessageVoiceNote(
      {required this.voiceNote,
      required this.caption,
      required this.isListened});

  /// voice_note The voice note description
  final VoiceNote voiceNote;

  /// caption Voice note caption
  final FormattedText caption;

  /// is_listened True, if at least one of the recipients has listened to the voice note
  final bool isListened;

  static const String CONSTRUCTOR = 'messageVoiceNote';

  static MessageVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageVoiceNote(
        voiceNote: VoiceNote.fromJson(json['voice_note'])!,
        caption: FormattedText.fromJson(json['caption'])!,
        isListened: json['is_listened']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'voice_note': this.voiceNote,
        'caption': this.caption,
        'is_listened': this.isListened,
        '@type': CONSTRUCTOR
      };
}
