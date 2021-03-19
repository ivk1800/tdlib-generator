part of '../tdapi.dart';

/// Group.Functions
/// Changes information about a chat. Available for basic groups, supergroups, and channels. Requires can_change_info rights
class SetChatDescription extends TdFunction {
  SetChatDescription({required this.chatId, required this.description});

  /// chat_id Identifier of the chat
  final int chatId;

  /// param_description New chat description; 0-255 characters
  final String description;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'setChatDescription';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'description': this.description,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
