part of '../tdapi.dart';

/// Group.Objects
/// A sticker set has changed
class UpdateStickerSet extends Update {
  UpdateStickerSet({required this.stickerSet});

  /// sticker_set The sticker set
  final StickerSet stickerSet;

  static const String CONSTRUCTOR = 'updateStickerSet';

  static UpdateStickerSet? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateStickerSet(
        stickerSet: StickerSet.fromJson(json['sticker_set'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'sticker_set': this.stickerSet, '@type': CONSTRUCTOR};
}
