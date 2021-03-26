import '../tdapi.dart';

/// Changes the chat members permissions. Supported only for basic groups and
/// Requires can_restrict_members administrator right
/// Returns [Ok]
class SetChatPermissions extends TdFunction {
  SetChatPermissions(
      {required this.chatId, required this.permissions, this.extra});

  /// [chatId] Chat identifier
  final int chatId;

  /// [permissions] New non-administrator members permissions in the chat
  final ChatPermissions permissions;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'setChatPermissions';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'permissions': this.permissions.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
