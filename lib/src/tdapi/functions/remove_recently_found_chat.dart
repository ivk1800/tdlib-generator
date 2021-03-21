part of '../tdapi.dart';

/// Removes a chat from the list of recently found chats
class RemoveRecentlyFoundChat extends TdFunction {
  RemoveRecentlyFoundChat({required this.chatId});

  /// [chatId] Identifier of the chat to be removed
  final int chatId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'removeRecentlyFoundChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
