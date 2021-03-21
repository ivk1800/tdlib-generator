part of '../tdapi.dart';

/// Returns stickers from the installed sticker sets that correspond to a given emoji. If the emoji is not empty, favorite and recently used stickers may also be returned
class GetStickers extends TdFunction {
  GetStickers({required this.emoji, required this.limit});

  /// [emoji] String representation of emoji. If empty, returns all known installed stickers
  final String emoji;

  /// [limit] The maximum number of stickers to be returned
  final int limit;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getStickers';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'emoji': this.emoji,
        'limit': this.limit,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
