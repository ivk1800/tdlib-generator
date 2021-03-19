part of '../tdapi.dart';

/// Group.Functions
/// Returns a list of administrators of the chat with their custom titles
class GetChatAdministrators extends TdFunction {
  GetChatAdministrators({required this.chatId});

  /// chat_id Chat identifier
  final int chatId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getChatAdministrators';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
