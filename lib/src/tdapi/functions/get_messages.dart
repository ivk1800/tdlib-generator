part of '../tdapi.dart';

/// Returns information about messages. If a message is not found, returns null on the corresponding position of the result
class GetMessages extends TdFunction {
  GetMessages({required this.chatId, required this.messageIds});

  /// [chatId] Identifier of the chat the messages belong to
  final int chatId;

  /// [messageIds] Identifiers of the messages to get
  final List<int> messageIds;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getMessages';

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
