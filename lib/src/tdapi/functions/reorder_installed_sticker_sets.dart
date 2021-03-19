part of '../tdapi.dart';

/// Group.Functions
/// Changes the order of installed sticker sets
class ReorderInstalledStickerSets extends TdFunction {
  ReorderInstalledStickerSets(
      {required this.isMasks, required this.stickerSetIds});

  /// is_masks Pass true to change the order of mask sticker sets; pass false to change the order of ordinary sticker sets
  final bool isMasks;

  /// sticker_set_ids Identifiers of installed sticker sets in the new correct order
  final List<int> stickerSetIds;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'reorderInstalledStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'is_masks': this.isMasks,
        'sticker_set_ids': this.stickerSetIds,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
