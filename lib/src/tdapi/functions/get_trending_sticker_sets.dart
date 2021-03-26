import '../tdapi.dart';

/// Returns a list of trending sticker sets. For the optimal performance the
/// of returned sticker sets is chosen by the library
/// Returns [StickerSets]
class GetTrendingStickerSets extends TdFunction {
  GetTrendingStickerSets(
      {required this.offset, required this.limit, this.extra});

  /// [offset] The offset from which to return the sticker sets; must be
  final int offset;

  /// [limit] The maximum number of sticker sets to be returned; must be
  /// Fewer sticker sets may be returned than specified by the limit, even if
  /// end of the list has not been reached
  final int limit;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getTrendingStickerSets';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'offset': this.offset,
        'limit': this.limit,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
