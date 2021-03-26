import '../tdapi.dart';

/// Returns favorite stickers
/// Returns [Stickers]
class GetFavoriteStickers extends TdFunction {
  GetFavoriteStickers({this.extra});

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getFavoriteStickers';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
