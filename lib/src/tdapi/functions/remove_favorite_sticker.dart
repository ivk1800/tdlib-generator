import '../tdapi.dart';

/// Removes a sticker from the list of favorite stickers
class RemoveFavoriteSticker extends TdFunction {
  RemoveFavoriteSticker({required this.sticker});

  /// [sticker] Sticker file to delete from the list
  final InputFile sticker;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'removeFavoriteSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'sticker': this.sticker, '@type': CONSTRUCTOR, '@extra': this.extra};
}
