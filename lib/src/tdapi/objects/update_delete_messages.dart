part of '../tdapi.dart';

/// Group.Objects
/// Some messages were deleted
class UpdateDeleteMessages extends Update {
  UpdateDeleteMessages(
      {required this.chatId,
      required this.messageIds,
      required this.isPermanent,
      required this.fromCache});

  /// chat_id Chat identifier
  final int chatId;

  /// message_ids Identifiers of the deleted messages
  final List<int> messageIds;

  /// is_permanent True, if the messages are permanently deleted by a user (as opposed to just becoming inaccessible)
  final bool isPermanent;

  /// from_cache True, if the messages are deleted only from the cache and can possibly be retrieved again in the future
  final bool fromCache;

  static const String CONSTRUCTOR = 'updateDeleteMessages';

  static UpdateDeleteMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateDeleteMessages(
        chatId: json['chat_id'],
        messageIds: List<int>.from(
            (json['message_ids}'] ?? []).map((item) => json['int']).toList()),
        isPermanent: json['is_permanent'],
        fromCache: json['from_cache']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_ids': this.messageIds,
        'is_permanent': this.isPermanent,
        'from_cache': this.fromCache,
        '@type': CONSTRUCTOR
      };
}
