import '../tdapi.dart';

/// Contains full information about a basic group
class BasicGroupFullInfo extends TdObject {
  BasicGroupFullInfo(
      {this.photo,
      required this.description,
      required this.creatorUserId,
      required this.members,
      required this.inviteLink,
      this.extra});

  /// [photo] Chat photo; may be null
  final ChatPhoto? photo;

  /// param_[description] Group description
  final String description;

  /// [creatorUserId] User identifier of the creator of the group; 0 if unknown
  final int creatorUserId;

  /// [members] Group members
  final List<ChatMember> members;

  /// [inviteLink] Invite link for this group; available only after it has been
  /// at least once and only for the group creator
  final String inviteLink;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'basicGroupFullInfo';

  static BasicGroupFullInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BasicGroupFullInfo(
        photo: ChatPhoto.fromJson(json['photo']),
        description: json['description'],
        creatorUserId: json['creator_user_id'],
        members: List<ChatMember>.from((json['members'] ?? [])
            .map((item) => ChatMember.fromJson(item))
            .toList()),
        inviteLink: json['invite_link'],
        extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'photo': this.photo?.toJson(),
        'description': this.description,
        'creator_user_id': this.creatorUserId,
        'members': members.map((item) => item.toJson()).toList(),
        'invite_link': this.inviteLink,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
