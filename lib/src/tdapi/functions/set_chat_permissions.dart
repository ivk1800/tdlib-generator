import '../tdapi.dart';

/// Changes the chat members permissions. Supported only for basic groups and
/// Requires can_restrict_members administrator right
class SetChatPermissions extends TdFunction {
  SetChatPermissions({required this.chatId, required this.permissions});

  /// [chatId] Chat identifier
  final int chatId;

  /// [permissions] New non-administrator members permissions in the chat
  final ChatPermissions permissions;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'setChatPermissions';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'permissions': this.permissions,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
