import '../tdapi.dart';

/// Changes the sticker set of a supergroup; requires can_change_info rights
class SetSupergroupStickerSet extends TdFunction {
  SetSupergroupStickerSet(
      {required this.supergroupId, required this.stickerSetId});

  /// [supergroupId] Identifier of the supergroup
  final int supergroupId;

  /// [stickerSetId] New value of the supergroup sticker set identifier. Use 0
  /// remove the supergroup sticker set
  final int stickerSetId;

  /// callback sign
  dynamic? extra;

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
