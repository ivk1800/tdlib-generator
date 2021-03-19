part of '../tdapi.dart';

/// Group.Functions
/// Removes a pinned message from a chat; requires can_pin_messages rights in the group or can_edit_messages rights in the channel
class UnpinChatMessage extends TdFunction {
  UnpinChatMessage({required this.chatId, required this.messageId});

  /// chat_id Identifier of the chat
  final int chatId;

  /// message_id Identifier of the removed pinned message
  final int messageId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'unpinChatMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
