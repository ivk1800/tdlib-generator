import '../tdapi.dart';

/// Contains information about a chat invite link
class ChatInviteLinkInfo extends TdObject {
  ChatInviteLinkInfo(
      {required this.chatId,
      required this.accessibleFor,
      required this.type,
      required this.title,
      this.photo,
      required this.memberCount,
      required this.memberUserIds,
      required this.isPublic,
      this.extra});

  /// [chatId] Chat identifier of the invite link; 0 if the user has no access
  /// the chat before joining
  final int chatId;

  /// [accessibleFor] If non-zero, the amount of time for which read access to
  /// chat will remain available, in seconds
  final int accessibleFor;

  /// [type] Contains information about the type of the chat
  final ChatType type;

  /// [title] Title of the chat
  final String title;

  /// [photo] Chat photo; may be null
  final ChatPhotoInfo? photo;

  /// [memberCount] Number of members in the chat
  final int memberCount;

  /// [memberUserIds] User identifiers of some chat members that may be known to
  /// current user
  final List<int> memberUserIds;

  /// [isPublic] True, if the chat is a public supergroup or channel, i.e. it
  /// a username or it is a location-based supergroup
  final bool isPublic;

  /// callback sign
  final dynamic? extra;

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
        memberUserIds: List<int>.from((json['member_user_ids'] ?? [])
            .map((item) => json['int'])
            .toList()),
        isPublic: json['is_public'],
        extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'accessible_for': this.accessibleFor,
        'type': this.type.toJson(),
        'title': this.title,
        'photo': this.photo?.toJson(),
        'member_count': this.memberCount,
        'member_user_ids': memberUserIds.map((item) => item).toList(),
        'is_public': this.isPublic,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
