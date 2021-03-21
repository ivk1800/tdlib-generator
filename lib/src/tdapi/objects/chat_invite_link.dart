import '../tdapi.dart';

/// Contains a chat invite link
class ChatInviteLink extends TdObject {
  ChatInviteLink({required this.inviteLink, this.extra});

  /// [inviteLink] Chat invite link
  final String inviteLink;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'chatInviteLink';

  static ChatInviteLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatInviteLink(
        inviteLink: json['invite_link'], extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'invite_link': this.inviteLink,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
