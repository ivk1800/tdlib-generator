import '../tdapi.dart';

/// Changes the status of a chat member, needs appropriate privileges. This
/// is currently not suitable for adding new members to the chat and
/// chat ownership; instead, use addChatMember or transferChatOwnership. The
/// member status will not be changed until it has been synchronized with the
/// Returns [Ok]
class SetChatMemberStatus extends TdFunction {
  SetChatMemberStatus(
      {required this.chatId, required this.userId, required this.status});

  /// [chatId] Chat identifier
  final int chatId;

  /// [userId] User identifier
  final int userId;

  /// [status] The new status of the member in the chat
  final ChatMemberStatus status;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'setChatMemberStatus';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'user_id': this.userId,
        'status': this.status.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
