part of '../tdapi.dart';

/// A video message
class InputMessageVideo extends InputMessageContent {
  InputMessageVideo(
      {required this.video,
      required this.thumbnail,
      required this.addedStickerFileIds,
      required this.duration,
      required this.width,
      required this.height,
      required this.supportsStreaming,
      required this.caption,
      required this.ttl});

  /// [video] Video to be sent
  final InputFile video;

  /// [thumbnail] Video thumbnail, if available
  final InputThumbnail thumbnail;

  /// [addedStickerFileIds] File identifiers of the stickers added to the video,
  /// applicable
  final List<int> addedStickerFileIds;

  /// [duration] Duration of the video, in seconds
  final int duration;

  /// [width] Video width
  final int width;

  /// [height] Video height
  final int height;

  /// [supportsStreaming] True, if the video should be tried to be streamed
  final bool supportsStreaming;

  /// [caption] Video caption; 0-GetOption("message_caption_length_max")
  final FormattedText caption;

  /// [ttl] Video TTL (Time To Live), in seconds (0-60). A non-zero TTL can be
  /// only in private chats
  final int ttl;

  static const String CONSTRUCTOR = 'inputMessageVideo';

  static InputMessageVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageVideo(
        video: InputFile.fromJson(json['video'])!,
        thumbnail: InputThumbnail.fromJson(json['thumbnail'])!,
        addedStickerFileIds: List<int>.from(
            (json['added_sticker_file_ids}'] ?? [])
                .map((item) => json['int'])
                .toList()),
        duration: json['duration'],
        width: json['width'],
        height: json['height'],
        supportsStreaming: json['supports_streaming'],
        caption: FormattedText.fromJson(json['caption'])!,
        ttl: json['ttl']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'video': this.video,
        'thumbnail': this.thumbnail,
        'added_sticker_file_ids': this.addedStickerFileIds,
        'duration': this.duration,
        'width': this.width,
        'height': this.height,
        'supports_streaming': this.supportsStreaming,
        'caption': this.caption,
        'ttl': this.ttl,
        '@type': CONSTRUCTOR
      };
}
