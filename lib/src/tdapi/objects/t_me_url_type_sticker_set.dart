part of '../tdapi.dart';

/// Group.Objects
/// A URL linking to a sticker set
class TMeUrlTypeStickerSet extends TMeUrlType {
  TMeUrlTypeStickerSet({required this.stickerSetId});

  /// sticker_set_id Identifier of the sticker set
  final int stickerSetId;

  static const String CONSTRUCTOR = 'tMeUrlTypeStickerSet';

  static TMeUrlTypeStickerSet? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TMeUrlTypeStickerSet(
        stickerSetId: int.tryParse(json['sticker_set_id']) ?? 0);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'sticker_set_id': this.stickerSetId, '@type': CONSTRUCTOR};
}
