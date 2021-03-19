part of '../tdapi.dart';

/// Group.Functions
/// Returns an HTTPS link to a message in a chat. Available only for already sent messages in supergroups and channels. This is an offline request
class GetMessageLink extends TdFunction {
  GetMessageLink(
      {required this.chatId,
      required this.messageId,
      required this.forAlbum,
      required this.forComment});

  /// chat_id Identifier of the chat to which the message belongs
  final int chatId;

  /// message_id Identifier of the message
  final int messageId;

  /// for_album Pass true to create a link for the whole media album
  final bool forAlbum;

  /// for_comment Pass true to create a link to the message as a channel post comment, or from a message thread
  final bool forComment;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getMessageLink';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'for_album': this.forAlbum,
        'for_comment': this.forComment,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
