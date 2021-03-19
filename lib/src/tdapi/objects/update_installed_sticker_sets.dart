part of '../tdapi.dart';

/// Group.Objects
/// The list of installed sticker sets was updated
class UpdateInstalledStickerSets extends Update {
  UpdateInstalledStickerSets(
      {required this.isMasks, required this.stickerSetIds});

  /// is_masks True, if the list of installed mask sticker sets was updated
  final bool isMasks;

  /// sticker_set_ids The new list of installed ordinary sticker sets
  final List<int> stickerSetIds;

  static const String CONSTRUCTOR = 'updateInstalledStickerSets';

  static UpdateInstalledStickerSets? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateInstalledStickerSets(
        isMasks: json['is_masks'],
        stickerSetIds: List<int>.from((json['sticker_set_ids}'] ?? [])
            .map((item) => json['int'])
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'is_masks': this.isMasks,
        'sticker_set_ids': this.stickerSetIds,
        '@type': CONSTRUCTOR
      };
}
