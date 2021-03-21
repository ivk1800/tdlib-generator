import '../tdapi.dart';

/// Generates a new invite link for a chat; the previously generated link is
/// Available for basic groups, supergroups, and channels. Requires
/// privileges and can_invite_users right
class GenerateChatInviteLink extends TdFunction {
  GenerateChatInviteLink({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'generateChatInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
