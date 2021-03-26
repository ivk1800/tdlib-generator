import '../tdapi.dart';

/// Sets a sticker set thumbnail; for bots only. Returns the sticker set
/// Returns [StickerSet]
class SetStickerSetThumbnail extends TdFunction {
  SetStickerSetThumbnail(
      {required this.userId,
      required this.name,
      required this.thumbnail,
      this.extra});

  /// [userId] Sticker set owner
  final int userId;

  /// [name] Sticker set name
  final String name;

  /// [thumbnail] Thumbnail to set in PNG or TGS format. Animated thumbnail must
  /// set for animated sticker sets and only for them. Pass a zero InputFileId
  /// delete the thumbnail
  final InputFile thumbnail;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'setStickerSetThumbnail';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_id': this.userId,
        'name': this.name,
        'thumbnail': this.thumbnail.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
