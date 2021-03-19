part of '../tdapi.dart';

/// Group.Functions
/// Searches for the specified query in the title and username of already known chats, this is an offline request. Returns chats in the order seen in the main chat list
class SearchChats extends TdFunction {
  SearchChats({required this.query, required this.limit});

  /// query Query to search for. If the query is empty, returns up to 20 recently found chats
  final String query;

  /// limit The maximum number of chats to be returned
  final int limit;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'searchChats';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'query': this.query,
        'limit': this.limit,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
