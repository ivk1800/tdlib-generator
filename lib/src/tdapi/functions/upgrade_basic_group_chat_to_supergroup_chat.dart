part of '../tdapi.dart';

/// Creates a new supergroup from an existing basic group and sends a corresponding messageChatUpgradeTo and messageChatUpgradeFrom; requires creator privileges. Deactivates the original basic group
class UpgradeBasicGroupChatToSupergroupChat extends TdFunction {
  UpgradeBasicGroupChatToSupergroupChat({required this.chatId});

  /// [chatId] Identifier of the chat to upgrade
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
