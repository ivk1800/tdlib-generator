part of '../tdapi.dart';

/// Group.Functions
/// Returns information about a message, if it is available locally without sending network request. This is an offline request
class GetMessageLocally extends TdFunction {
  GetMessageLocally({required this.chatId, required this.messageId});

  /// chat_id Identifier of the chat the message belongs to
  final int chatId;

  /// message_id Identifier of the message to get
  final int messageId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getMessageLocally';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
