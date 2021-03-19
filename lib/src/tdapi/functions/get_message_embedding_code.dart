part of '../tdapi.dart';

/// Group.Functions
/// Returns an HTML code for embedding the message. Available only for messages in supergroups and channels with a username
class GetMessageEmbeddingCode extends TdFunction {
  GetMessageEmbeddingCode(
      {required this.chatId, required this.messageId, required this.forAlbum});

  /// chat_id Identifier of the chat to which the message belongs
  final int chatId;

  /// message_id Identifier of the message
  final int messageId;

  /// for_album Pass true to return an HTML code for embedding of the whole media album
  final bool forAlbum;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getMessageEmbeddingCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'for_album': this.forAlbum,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
