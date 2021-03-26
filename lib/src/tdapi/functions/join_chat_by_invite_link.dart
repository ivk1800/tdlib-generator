import '../tdapi.dart';

/// Uses an invite link to add the current user to the chat if possible. The
/// member will not be added until the chat state has been synchronized with
/// server
/// Returns [Chat]
class JoinChatByInviteLink extends TdFunction {
  JoinChatByInviteLink({required this.inviteLink, this.extra});

  /// [inviteLink] Invite link to import; should begin with
  /// "https://telegram.me/joinchat/", or "https://telegram.dog/joinchat/"
  final String inviteLink;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'joinChatByInviteLink';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'invite_link': this.inviteLink,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
