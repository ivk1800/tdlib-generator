import '../tdapi.dart';

/// Returns emoji corresponding to a sticker. The list is only for
/// purposes, because a sticker is always sent with a fixed emoji from the
/// Sticker object
class GetStickerEmojis extends TdFunction {
  GetStickerEmojis({required this.sticker});

  /// [sticker] Sticker file identifier
  final InputFile sticker;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getStickerEmojis';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'sticker': this.sticker, '@type': CONSTRUCTOR, '@extra': this.extra};
}
