part of '../tdapi.dart';

/// Group.Functions
/// Removes a chat from the list of frequently used chats. Supported only if the chat info database is enabled
class RemoveTopChat extends TdFunction {
  RemoveTopChat({required this.category, required this.chatId});

  /// category Category of frequently used chats
  final TopChatCategory category;

  /// chat_id Chat identifier
  final int chatId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'removeTopChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'category': this.category,
        'chat_id': this.chatId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
