import '../tdapi.dart';

/// Returns emoji corresponding to a sticker. The list is only for
/// purposes, because a sticker is always sent with a fixed emoji from the
/// Sticker object
/// Returns [Emojis]
class GetStickerEmojis extends TdFunction {
  GetStickerEmojis({required this.sticker, this.extra});

  /// [sticker] Sticker file identifier
  final InputFile sticker;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getStickerEmojis';

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
