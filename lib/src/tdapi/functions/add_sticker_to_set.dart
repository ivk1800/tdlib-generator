import '../tdapi.dart';

/// Adds a new sticker to a set; for bots only. Returns the sticker set
/// Returns [StickerSet]
class AddStickerToSet extends TdFunction {
  AddStickerToSet(
      {required this.userId,
      required this.name,
      required this.sticker,
      this.extra});

  /// [userId] Sticker set owner
  final int userId;

  /// [name] Sticker set name
  final String name;

  /// [sticker] Sticker to add to the set
  final InputSticker sticker;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'addStickerToSet';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_id': this.userId,
        'name': this.name,
        'sticker': this.sticker.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
