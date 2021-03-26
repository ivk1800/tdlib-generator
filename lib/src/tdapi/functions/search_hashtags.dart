import '../tdapi.dart';

/// Searches for recently used hashtags by their prefix
/// Returns [Hashtags]
class SearchHashtags extends TdFunction {
  SearchHashtags({required this.prefix, required this.limit});

  /// [prefix] Hashtag prefix to search for
  final String prefix;

  /// [limit] The maximum number of hashtags to be returned
  final int limit;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'searchHashtags';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'prefix': this.prefix,
        'limit': this.limit,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
