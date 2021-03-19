part of '../tdapi.dart';

/// Group.Functions
/// Returns information about a newest pinned message in the chat
class GetChatPinnedMessage extends TdFunction {
  GetChatPinnedMessage({required this.chatId});

  /// chat_id Identifier of the chat the message belongs to
  final int chatId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getChatPinnedMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
