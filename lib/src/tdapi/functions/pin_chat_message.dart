part of '../tdapi.dart';

/// Group.Functions
/// Pins a message in a chat; requires can_pin_messages rights or can_edit_messages rights in the channel
class PinChatMessage extends TdFunction {
  PinChatMessage(
      {required this.chatId,
      required this.messageId,
      required this.disableNotification,
      required this.onlyForSelf});

  /// chat_id Identifier of the chat
  final int chatId;

  /// message_id Identifier of the new pinned message
  final int messageId;

  /// disable_notification True, if there should be no notification about the pinned message. Notifications are always disabled in channels and private chats
  final bool disableNotification;

  /// only_for_self True, if the message needs to be pinned for one side only; private chats only
  final bool onlyForSelf;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'pinChatMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'disable_notification': this.disableNotification,
        'only_for_self': this.onlyForSelf,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
