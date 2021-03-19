part of '../tdapi.dart';

/// Group.Functions
/// Changes the status of a chat member, needs appropriate privileges. This function is currently not suitable for adding new members to the chat and transferring chat ownership; instead, use addChatMember or transferChatOwnership. The chat member status will not be changed until it has been synchronized with the server
class SetChatMemberStatus extends TdFunction {
  SetChatMemberStatus(
      {required this.chatId, required this.userId, required this.status});

  /// chat_id Chat identifier
  final int chatId;

  /// user_id User identifier
  final int userId;

  /// status The new status of the member in the chat
  final ChatMemberStatus status;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'setChatMemberStatus';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'user_id': this.userId,
        'status': this.status,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
