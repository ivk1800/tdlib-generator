part of '../tdapi.dart';

/// Group.Functions
/// Searches for installed sticker sets by looking for specified query in their title and name
class SearchInstalledStickerSets extends TdFunction {
  SearchInstalledStickerSets(
      {required this.isMasks, required this.query, required this.limit});

  /// is_masks Pass true to return mask sticker sets; pass false to return ordinary sticker sets
  final bool isMasks;

  /// query Query to search for
  final String query;

  /// limit The maximum number of sticker sets to return
  final int limit;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'searchInstalledStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'is_masks': this.isMasks,
        'query': this.query,
        'limit': this.limit,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
