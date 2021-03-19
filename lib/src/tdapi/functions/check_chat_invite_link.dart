part of '../tdapi.dart';

/// Group.Functions
/// Checks the validity of an invite link for a chat and returns information about the corresponding chat
class CheckChatInviteLink extends TdFunction {
  CheckChatInviteLink({required this.inviteLink});

  /// invite_link Invite link to be checked; should begin with "https://t.me/joinchat/", "https://telegram.me/joinchat/", or "https://telegram.dog/joinchat/"
  final String inviteLink;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'checkChatInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'invite_link': this.inviteLink,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
