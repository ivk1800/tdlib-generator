import '../tdapi.dart';

/// An animated sticker in TGS format
class InputStickerAnimated extends InputSticker {
  InputStickerAnimated({required this.sticker, required this.emojis});

  /// [sticker] File with the animated sticker. Only local or uploaded within a
  /// files are supported. See
  /// for technical requirements
  final InputFile sticker;

  /// [emojis] Emojis corresponding to the sticker
  final String emojis;

  static const String CONSTRUCTOR = 'inputStickerAnimated';

  static InputStickerAnimated? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputStickerAnimated(
        sticker: InputFile.fromJson(json['sticker'])!, emojis: json['emojis']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'sticker': this.sticker, 'emojis': this.emojis, '@type': CONSTRUCTOR};
}
