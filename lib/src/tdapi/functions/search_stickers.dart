import '../tdapi.dart';

/// Searches for stickers from public sticker sets that correspond to a given
/// Returns [Stickers]
class SearchStickers extends TdFunction {
  SearchStickers({required this.emoji, required this.limit});

  /// [emoji] String representation of emoji; must be non-empty
  final String emoji;

  /// [limit] The maximum number of stickers to be returned
  final int limit;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'searchStickers';

  @override
  dynamic? getExtra() => this.extra;
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
