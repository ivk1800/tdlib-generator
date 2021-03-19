part of '../tdapi.dart';

/// Group.Functions
/// Changes the position of a sticker in the set to which it belongs; for bots only. The sticker set must have been created by the bot
class SetStickerPositionInSet extends TdFunction {
  SetStickerPositionInSet({required this.sticker, required this.position});

  /// sticker Sticker
  final InputFile sticker;

  /// position New position of the sticker in the set, zero-based
  final int position;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'setStickerPositionInSet';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'sticker': this.sticker,
        'position': this.position,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
