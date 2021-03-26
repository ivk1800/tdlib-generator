import '../tdapi.dart';

/// Removes a sticker from the list of favorite stickers
/// Returns [Ok]
class RemoveFavoriteSticker extends TdFunction {
  RemoveFavoriteSticker({required this.sticker, this.extra});

  /// [sticker] Sticker file to delete from the list
  final InputFile sticker;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'removeFavoriteSticker';

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
