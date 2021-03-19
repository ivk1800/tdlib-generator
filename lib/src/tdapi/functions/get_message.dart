part of '../tdapi.dart';

/// Group.Functions
/// Returns information about a message
class GetMessage extends TdFunction {
  GetMessage({required this.chatId, required this.messageId});

  /// chat_id Identifier of the chat the message belongs to
  final int chatId;

  /// message_id Identifier of the message to get
  final int messageId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getMessage';

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
