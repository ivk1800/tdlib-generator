import '../tdapi.dart';

/// Returns a list of archived sticker sets
class GetArchivedStickerSets extends TdFunction {
  GetArchivedStickerSets(
      {required this.isMasks,
      required this.offsetStickerSetId,
      required this.limit});

  /// [isMasks] Pass true to return mask stickers sets; pass false to return
  /// sticker sets
  final bool isMasks;

  /// [offsetStickerSetId] Identifier of the sticker set from which to return
  /// result
  final int offsetStickerSetId;

  /// [limit] The maximum number of sticker sets to return
  final int limit;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getArchivedStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'is_masks': this.isMasks,
        'offset_sticker_set_id': this.offsetStickerSetId,
        'limit': this.limit,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
