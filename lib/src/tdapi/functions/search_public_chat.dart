part of '../tdapi.dart';

/// Group.Functions
/// Searches a public chat by its username. Currently only private chats, supergroups and channels can be public. Returns the chat if found; otherwise an error is returned
class SearchPublicChat extends TdFunction {
  SearchPublicChat({required this.username});

  /// username Username to be resolved
  final String username;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'searchPublicChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'username': this.username, '@type': CONSTRUCTOR, '@extra': this.extra};
}
