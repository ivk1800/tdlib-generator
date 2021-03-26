import '../tdapi.dart';

/// Removes a sticker from the set to which it belongs; for bots only. The
/// set must have been created by the bot
/// Returns [Ok]
class RemoveStickerFromSet extends TdFunction {
  RemoveStickerFromSet({required this.sticker, this.extra});

  /// [sticker] Sticker
  final InputFile sticker;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'removeStickerFromSet';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'sticker': this.sticker.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
