import '../tdapi.dart';

/// Returns chat lists to which the chat can be added. This is an offline
/// Returns [ChatLists]
class GetChatListsToAddChat extends TdFunction {
  GetChatListsToAddChat({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getChatListsToAddChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
