import '../tdapi.dart';

/// Contains information about a link to a message in a chat
class MessageLinkInfo extends TdObject {
  MessageLinkInfo(
      {required this.isPublic,
      required this.chatId,
      Message? this.message,
      required this.forAlbum,
      required this.forComment,
      this.extra});

  /// [isPublic] True, if the link is a public link for a message in a chat
  final bool isPublic;

  /// [chatId] If found, identifier of the chat to which the message belongs, 0
  final int chatId;

  /// [message] If found, the linked message; may be null
  final Message? message;

  /// [forAlbum] True, if the whole media album to which the message belongs is
  final bool forAlbum;

  /// [forComment] True, if the message is linked as a channel post comment or
  /// a message thread
  final bool forComment;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'messageLinkInfo';

  static MessageLinkInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageLinkInfo(
        isPublic: json['is_public'],
        chatId: json['chat_id'],
        message: Message.fromJson(json['message']),
        forAlbum: json['for_album'],
        forComment: json['for_comment'],
        extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'is_public': this.isPublic,
        'chat_id': this.chatId,
        'message': this.message,
        'for_album': this.forAlbum,
        'for_comment': this.forComment,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
