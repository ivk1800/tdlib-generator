part of '../tdapi.dart';

/// Group.Functions
/// Reports a chat to the Telegram moderators. A chat can be reported only from the chat action bar, or if this is a private chats with a bot, a private chat with a user sharing their location, a supergroup, or a channel, since other chats can't be checked by moderators
class ReportChat extends TdFunction {
  ReportChat(
      {required this.chatId, required this.reason, required this.messageIds});

  /// chat_id Chat identifier
  final int chatId;

  /// reason The reason for reporting the chat
  final ChatReportReason reason;

  /// message_ids Identifiers of reported messages, if any
  final List<int> messageIds;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'reportChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'reason': this.reason,
        'message_ids': this.messageIds,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
