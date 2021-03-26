import '../tdapi.dart';

/// Creates a new supergroup from an existing basic group and sends a
/// messageChatUpgradeTo and messageChatUpgradeFrom; requires creator
/// Deactivates the original basic group
/// Returns [Chat]
class UpgradeBasicGroupChatToSupergroupChat extends TdFunction {
  UpgradeBasicGroupChatToSupergroupChat({required this.chatId});

  /// [chatId] Identifier of the chat to upgrade
  final int chatId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'upgradeBasicGroupChatToSupergroupChat';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
