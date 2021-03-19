part of '../tdapi.dart';

/// Group.Functions
/// Returns a list of trending sticker sets. For the optimal performance the number of returned sticker sets is chosen by the library
class GetTrendingStickerSets extends TdFunction {
  GetTrendingStickerSets({required this.offset, required this.limit});

  /// offset The offset from which to return the sticker sets; must be non-negative
  final int offset;

  /// limit The maximum number of sticker sets to be returned; must be non-negative. Fewer sticker sets may be returned than specified by the limit, even if the end of the list has not been reached
  final int limit;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getTrendingStickerSets';

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
