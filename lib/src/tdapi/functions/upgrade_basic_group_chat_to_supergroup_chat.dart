part of '../tdapi.dart';

/// Group.Functions
/// Creates a new supergroup from an existing basic group and sends a corresponding messageChatUpgradeTo and messageChatUpgradeFrom; requires creator privileges. Deactivates the original basic group
class UpgradeBasicGroupChatToSupergroupChat extends TdFunction {
  UpgradeBasicGroupChatToSupergroupChat({required this.chatId});

  /// chat_id Identifier of the chat to upgrade
  final int chatId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'upgradeBasicGroupChatToSupergroupChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
