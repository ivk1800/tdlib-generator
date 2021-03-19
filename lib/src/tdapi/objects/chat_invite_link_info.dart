part of '../tdapi.dart';

/// Group.Objects
/// Contains information about a chat invite link
class ChatInviteLinkInfo extends TdObject {
  ChatInviteLinkInfo(
      {required this.chatId,
      required this.accessibleFor,
      required this.type,
      required this.title,
      ChatPhotoInfo? this.photo,
      required this.memberCount,
      required this.memberUserIds,
      required this.isPublic});

  /// chat_id Chat identifier of the invite link; 0 if the user has no access to the chat before joining
  final int chatId;

  /// accessible_for If non-zero, the amount of time for which read access to the chat will remain available, in seconds
  final int accessibleFor;

  /// type Contains information about the type of the chat
  final ChatType type;

  /// title Title of the chat
  final String title;

  /// photo Chat photo; may be null
  final ChatPhotoInfo? photo;

  /// member_count Number of members in the chat
  final int memberCount;

  /// member_user_ids User identifiers of some chat members that may be known to the current user
  final List<int> memberUserIds;

  /// is_public True, if the chat is a public supergroup or channel, i.e. it has a username or it is a location-based supergroup
  final bool isPublic;

  static const String CONSTRUCTOR = 'chatInviteLinkInfo';

  static ChatInviteLinkInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatInviteLinkInfo(
        chatId: json['chat_id'],
        accessibleFor: json['accessible_for'],
        type: ChatType.fromJson(json['type'])!,
        title: json['title'],
        photo: ChatPhotoInfo.fromJson(json['photo']),
        memberCount: json['member_count'],
        memberUserIds: List<int>.from((json['member_user_ids}'] ?? [])
            .map((item) => json['int'])
            .toList()),
        isPublic: json['is_public']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'accessible_for': this.accessibleFor,
        'type': this.type,
        'title': this.title,
        'photo': this.photo,
        'member_count': this.memberCount,
        'member_user_ids': this.memberUserIds,
        'is_public': this.isPublic,
        '@type': CONSTRUCTOR
      };
}
