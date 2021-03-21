import '../tdapi.dart';

/// Adds a chat to the list of recently found chats. The chat is added to the
/// of the list. If the chat is already in the list, it will be removed from
/// list first
class AddRecentlyFoundChat extends TdFunction {
  AddRecentlyFoundChat({required this.chatId});

  /// [chatId] Identifier of the chat to add
  final int chatId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'addRecentlyFoundChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
