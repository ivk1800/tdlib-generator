import '../tdapi.dart';

/// Resends messages which failed to send. Can be called only for messages for
/// messageSendingStateFailed.can_retry is true and after specified in
/// time passed.. If a message is re-sent, the corresponding failed to send
/// is deleted. Returns the sent messages in the same order as the message
/// passed in message_ids. If a message can't be re-sent, null will be
/// instead of the message
class ResendMessages extends TdFunction {
  ResendMessages({required this.chatId, required this.messageIds});

  /// [chatId] Identifier of the chat to send messages
  final int chatId;

  /// [messageIds] Identifiers of the messages to resend. Message identifiers
  /// be in a strictly increasing order
  final List<int> messageIds;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'resendMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_ids': this.messageIds,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
