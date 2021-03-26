import '../tdapi.dart';

/// Changes the position of a sticker in the set to which it belongs; for bots
/// The sticker set must have been created by the bot
/// Returns [Ok]
class SetStickerPositionInSet extends TdFunction {
  SetStickerPositionInSet(
      {required this.sticker, required this.position, this.extra});

  /// [sticker] Sticker
  final InputFile sticker;

  /// [position] New position of the sticker in the set, zero-based
  final int position;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'setStickerPositionInSet';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'sticker': this.sticker.toJson(),
        'position': this.position,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
