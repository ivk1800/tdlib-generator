part of '../tdapi.dart';

/// Returns an HTML code for embedding the message. Available only for
/// in supergroups and channels with a username
class GetMessageEmbeddingCode extends TdFunction {
  GetMessageEmbeddingCode(
      {required this.chatId, required this.messageId, required this.forAlbum});

  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [forAlbum] Pass true to return an HTML code for embedding of the whole
  /// album
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
