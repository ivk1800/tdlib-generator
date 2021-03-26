import '../tdapi.dart';

/// Reports a chat to the Telegram moderators. A chat can be reported only
/// the chat action bar, or if this is a private chats with a bot, a private
/// with a user sharing their location, a supergroup, or a channel, since
/// chats can't be checked by moderators
/// Returns [Ok]
class ReportChat extends TdFunction {
  ReportChat(
      {required this.chatId,
      required this.reason,
      required this.messageIds,
      this.extra});

  /// [chatId] Chat identifier
  final int chatId;

  /// [reason] The reason for reporting the chat
  final ChatReportReason reason;

  /// [messageIds] Identifiers of reported messages, if any
  final List<int> messageIds;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'reportChat';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'reason': this.reason.toJson(),
        'message_ids': messageIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
