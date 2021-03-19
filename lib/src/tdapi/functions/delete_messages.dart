part of '../tdapi.dart';

/// Group.Functions
/// Deletes messages
class DeleteMessages extends TdFunction {
  DeleteMessages(
      {required this.chatId, required this.messageIds, required this.revoke});

  /// chat_id Chat identifier
  final int chatId;

  /// message_ids Identifiers of the messages to be deleted
  final List<int> messageIds;

  /// revoke Pass true to try to delete messages for all chat members. Always true for supergroups, channels and secret chats
  final bool revoke;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'deleteMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_ids': this.messageIds,
        'revoke': this.revoke,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
