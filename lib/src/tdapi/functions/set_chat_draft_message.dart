part of '../tdapi.dart';

/// Group.Functions
/// Changes the draft message in a chat
class SetChatDraftMessage extends TdFunction {
  SetChatDraftMessage(
      {required this.chatId,
      required this.messageThreadId,
      DraftMessage? this.draftMessage});

  /// chat_id Chat identifier
  final int chatId;

  /// message_thread_id If not 0, a message thread identifier in which the draft was changed
  final int messageThreadId;

  /// draft_message New draft message; may be null
  final DraftMessage? draftMessage;

  /// callback sign
  dynamic extra;

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
