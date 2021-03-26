import '../tdapi.dart';

/// A photo message
class InputMessagePhoto extends InputMessageContent {
  InputMessagePhoto(
      {required this.photo,
      required this.thumbnail,
      required this.addedStickerFileIds,
      required this.width,
      required this.height,
      required this.caption,
      required this.ttl});

  /// [photo] Photo to send
  final InputFile photo;

  /// [thumbnail] Photo thumbnail to be sent, this is sent to the other party in
  /// chats only
  final InputThumbnail thumbnail;

  /// [addedStickerFileIds] File identifiers of the stickers added to the photo,
  /// applicable
  final List<int> addedStickerFileIds;

  /// [width] Photo width
  final int width;

  /// [height] Photo height
  final int height;

  /// [caption] Photo caption; 0-GetOption("message_caption_length_max")
  final FormattedText caption;

  /// [ttl] Photo TTL (Time To Live), in seconds (0-60). A non-zero TTL can be
  /// only in private chats
  final int ttl;

  static const String CONSTRUCTOR = 'inputMessagePhoto';

  static InputMessagePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessagePhoto(
        photo: InputFile.fromJson(json['photo'])!,
        thumbnail: InputThumbnail.fromJson(json['thumbnail'])!,
        addedStickerFileIds: List<int>.from(
            (json['added_sticker_file_ids}'] ?? [])
                .map((item) => json['int'])
                .toList()),
        width: json['width'],
        height: json['height'],
        caption: FormattedText.fromJson(json['caption'])!,
        ttl: json['ttl']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'photo': this.photo.toJson(),
        'thumbnail': this.thumbnail.toJson(),
        'added_sticker_file_ids':
            addedStickerFileIds.map((item) => item).toList(),
        'width': this.width,
        'height': this.height,
        'caption': this.caption.toJson(),
        'ttl': this.ttl,
        '@type': CONSTRUCTOR
      };
}
