import '../tdapi.dart';

/// Changes the order of installed sticker sets
/// Returns [Ok]
class ReorderInstalledStickerSets extends TdFunction {
  ReorderInstalledStickerSets(
      {required this.isMasks, required this.stickerSetIds, this.extra});

  /// [isMasks] Pass true to change the order of mask sticker sets; pass false
  /// change the order of ordinary sticker sets
  final bool isMasks;

  /// [stickerSetIds] Identifiers of installed sticker sets in the new correct
  final List<int> stickerSetIds;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'reorderInstalledStickerSets';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'is_masks': this.isMasks,
        'sticker_set_ids': stickerSetIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
