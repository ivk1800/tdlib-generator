part of '../tdapi.dart';

/// Group.Objects
/// A chat was marked as unread or was read
class UpdateChatIsMarkedAsUnread extends Update {
  UpdateChatIsMarkedAsUnread(
      {required this.chatId, required this.isMarkedAsUnread});

  /// chat_id Chat identifier
  final int chatId;

  /// is_marked_as_unread New value of is_marked_as_unread
  final bool isMarkedAsUnread;

  static const String CONSTRUCTOR = 'updateChatIsMarkedAsUnread';

  static UpdateChatIsMarkedAsUnread? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatIsMarkedAsUnread(
        chatId: json['chat_id'], isMarkedAsUnread: json['is_marked_as_unread']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'is_marked_as_unread': this.isMarkedAsUnread,
        '@type': CONSTRUCTOR
      };
}
