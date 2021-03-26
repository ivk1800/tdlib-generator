import '../tdapi.dart';

/// Returns all scheduled messages in a chat. The messages are returned in a
/// chronological order (i.e., in order of decreasing message_id)
/// Returns [Messages]
class GetChatScheduledMessages extends TdFunction {
  GetChatScheduledMessages({required this.chatId, this.extra});

  /// [chatId] Chat identifier
  final int chatId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getChatScheduledMessages';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
