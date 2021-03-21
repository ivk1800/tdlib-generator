import '../tdapi.dart';

/// Changes the draft message in a chat
class SetChatDraftMessage extends TdFunction {
  SetChatDraftMessage(
      {required this.chatId,
      required this.messageThreadId,
      DraftMessage? this.draftMessage});

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageThreadId] If not 0, a message thread identifier in which the draft
  /// changed
  final int messageThreadId;

  /// [draftMessage] New draft message; may be null
  final DraftMessage? draftMessage;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'setChatDraftMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_thread_id': this.messageThreadId,
        'draft_message': this.draftMessage,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
