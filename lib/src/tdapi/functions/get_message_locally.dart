import '../tdapi.dart';

/// Returns information about a message, if it is available locally without
/// network request. This is an offline request
class GetMessageLocally extends TdFunction {
  GetMessageLocally({required this.chatId, required this.messageId});

  /// [chatId] Identifier of the chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message to get
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
