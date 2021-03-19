part of '../tdapi.dart';

/// Group.Functions
/// Changes the sticker set of a supergroup; requires can_change_info rights
class SetSupergroupStickerSet extends TdFunction {
  SetSupergroupStickerSet(
      {required this.supergroupId, required this.stickerSetId});

  /// supergroup_id Identifier of the supergroup
  final int supergroupId;

  /// sticker_set_id New value of the supergroup sticker set identifier. Use 0 to remove the supergroup sticker set
  final int stickerSetId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'setSupergroupStickerSet';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'supergroup_id': this.supergroupId,
        'sticker_set_id': this.stickerSetId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
