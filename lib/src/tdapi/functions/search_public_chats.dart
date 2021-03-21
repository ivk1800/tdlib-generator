part of '../tdapi.dart';

/// Searches public chats by looking for specified query in their username and
/// Currently only private chats, supergroups and channels can be public.
/// a meaningful number of results. Returns nothing if the length of the
/// username prefix is less than 5. Excludes private chats with contacts and
/// from the chat list from the results
class SearchPublicChats extends TdFunction {
  SearchPublicChats({required this.query});

  /// [query] Query to search for
  final String query;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'searchPublicChats';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'query': this.query, '@type': CONSTRUCTOR, '@extra': this.extra};
}
