import '../tdapi.dart';

/// Removes a chat from the list of recently found chats
/// Returns [Ok]
class RemoveRecentlyFoundChat extends TdFunction {
  RemoveRecentlyFoundChat({required this.chatId, this.extra});

  /// [chatId] Identifier of the chat to be removed
  final int chatId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'removeRecentlyFoundChat';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
