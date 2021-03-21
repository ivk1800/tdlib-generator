part of '../tdapi.dart';

/// Returns favorite stickers
class GetFavoriteStickers extends TdFunction {
  GetFavoriteStickers();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getFavoriteStickers';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
