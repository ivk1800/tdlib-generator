import '../tdapi.dart';

/// Searches for a sticker set by its name
/// Returns [StickerSet]
class SearchStickerSet extends TdFunction {
  SearchStickerSet({required this.name});

  /// [name] Name of the sticker set
  final String name;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'searchStickerSet';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'name': this.name, '@type': CONSTRUCTOR, '@extra': this.extra};
}
