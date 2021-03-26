import '../tdapi.dart';

/// Manually adds a new sticker to the list of recently used stickers. The new
/// is added to the top of the list. If the sticker was already in the list,
/// is removed from the list first. Only stickers belonging to a sticker set
/// be added to this list
/// Returns [Stickers]
class AddRecentSticker extends TdFunction {
  AddRecentSticker({required this.isAttached, required this.sticker});

  /// [isAttached] Pass true to add the sticker to the list of stickers recently
  /// to photo or video files; pass false to add the sticker to the list of
  /// sent stickers
  final bool isAttached;

  /// [sticker] Sticker file to add
  final InputFile sticker;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'addRecentSticker';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'is_attached': this.isAttached,
        'sticker': this.sticker.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
