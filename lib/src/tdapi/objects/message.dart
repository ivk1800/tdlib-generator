part of '../tdapi.dart';

/// Group.Objects
/// Describes a message
class Message extends TdObject {
  Message(
      {required this.id,
      required this.sender,
      required this.chatId,
      MessageSendingState? this.sendingState,
      MessageSchedulingState? this.schedulingState,
      required this.isOutgoing,
      required this.isPinned,
      required this.canBeEdited,
      required this.canBeForwarded,
      required this.canBeDeletedOnlyForSelf,
      required this.canBeDeletedForAllUsers,
      required this.canGetStatistics,
      required this.canGetMessageThread,
      required this.isChannelPost,
      required this.containsUnreadMention,
      required this.date,
      required this.editDate,
      MessageForwardInfo? this.forwardInfo,
      MessageInteractionInfo? this.interactionInfo,
      required this.replyInChatId,
      required this.replyToMessageId,
      required this.messageThreadId,
      required this.ttl,
      required this.ttlExpiresIn,
      required this.viaBotUserId,
      required this.authorSignature,
      required this.mediaAlbumId,
      required this.restrictionReason,
      required this.content,
      ReplyMarkup? this.replyMarkup});

  /// id Message identifier; unique for the chat to which the message belongs
  final int id;

  /// sender The sender of the message
  final MessageSender sender;

  /// chat_id Chat identifier
  final int chatId;

  /// sending_state Information about the sending state of the message; may be null
  final MessageSendingState? sendingState;

  /// scheduling_state Information about the scheduling state of the message; may be null
  final MessageSchedulingState? schedulingState;

  /// is_outgoing True, if the message is outgoing
  final bool isOutgoing;

  /// is_pinned True, if the message is pinned
  final bool isPinned;

  /// can_be_edited True, if the message can be edited. For live location and poll messages this fields shows whether editMessageLiveLocation or stopPoll can be used with this message by the application
  final bool canBeEdited;

  /// can_be_forwarded True, if the message can be forwarded
  final bool canBeForwarded;

  /// can_be_deleted_only_for_self True, if the message can be deleted only for the current user while other users will continue to see it
  final bool canBeDeletedOnlyForSelf;

  /// can_be_deleted_for_all_users True, if the message can be deleted for all users
  final bool canBeDeletedForAllUsers;

  /// can_get_statistics True, if the message statistics are available
  final bool canGetStatistics;

  /// can_get_message_thread True, if the message thread info is available
  final bool canGetMessageThread;

  /// is_channel_post True, if the message is a channel post. All messages to channels are channel posts, all other messages are not channel posts
  final bool isChannelPost;

  /// contains_unread_mention True, if the message contains an unread mention for the current user
  final bool containsUnreadMention;

  /// date Point in time (Unix timestamp) when the message was sent
  final int date;

  /// edit_date Point in time (Unix timestamp) when the message was last edited
  final int editDate;

  /// forward_info Information about the initial message sender; may be null
  final MessageForwardInfo? forwardInfo;

  /// interaction_info Information about interactions with the message; may be null
  final MessageInteractionInfo? interactionInfo;

  /// reply_in_chat_id If non-zero, the identifier of the chat to which the replied message belongs; Currently, only messages in the Replies chat can have different reply_in_chat_id and chat_id
  final int replyInChatId;

  /// reply_to_message_id If non-zero, the identifier of the message this message is replying to; can be the identifier of a deleted message
  final int replyToMessageId;

  /// message_thread_id If non-zero, the identifier of the message thread the message belongs to; unique within the chat to which the message belongs
  final int messageThreadId;

  /// ttl For self-destructing messages, the message's TTL (Time To Live), in seconds; 0 if none. TDLib will send updateDeleteMessages or updateMessageContent once the TTL expires
  final int ttl;

  /// ttl_expires_in Time left before the message expires, in seconds
  final double ttlExpiresIn;

  /// via_bot_user_id If non-zero, the user identifier of the bot through which this message was sent
  final int viaBotUserId;

  /// author_signature For channel posts and anonymous group messages, optional author signature
  final String authorSignature;

  /// media_album_id Unique identifier of an album this message belongs to. Only audios, documents, photos and videos can be grouped together in albums
  final int mediaAlbumId;

  /// restriction_reason If non-empty, contains a human-readable description of the reason why access to this message must be restricted
  final String restrictionReason;

  /// content Content of the message
  final MessageContent content;

  /// reply_markup Reply markup for the message; may be null
  final ReplyMarkup? replyMarkup;

  static const String CONSTRUCTOR = 'message';

  static Message? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Message(
        id: json['id'],
        sender: MessageSender.fromJson(json['sender'])!,
        chatId: json['chat_id'],
        sendingState: MessageSendingState.fromJson(json['sending_state']),
        schedulingState:
            MessageSchedulingState.fromJson(json['scheduling_state']),
        isOutgoing: json['is_outgoing'],
        isPinned: json['is_pinned'],
        canBeEdited: json['can_be_edited'],
        canBeForwarded: json['can_be_forwarded'],
        canBeDeletedOnlyForSelf: json['can_be_deleted_only_for_self'],
        canBeDeletedForAllUsers: json['can_be_deleted_for_all_users'],
        canGetStatistics: json['can_get_statistics'],
        canGetMessageThread: json['can_get_message_thread'],
        isChannelPost: json['is_channel_post'],
        containsUnreadMention: json['contains_unread_mention'],
        date: json['date'],
        editDate: json['edit_date'],
        forwardInfo: MessageForwardInfo.fromJson(json['forward_info']),
        interactionInfo:
            MessageInteractionInfo.fromJson(json['interaction_info']),
        replyInChatId: json['reply_in_chat_id'],
        replyToMessageId: json['reply_to_message_id'],
        messageThreadId: json['message_thread_id'],
        ttl: json['ttl'],
        ttlExpiresIn: json['ttl_expires_in'],
        viaBotUserId: json['via_bot_user_id'],
        authorSignature: json['author_signature'],
        mediaAlbumId: int.tryParse(json['media_album_id']) ?? 0,
        restrictionReason: json['restriction_reason'],
        content: MessageContent.fromJson(json['content'])!,
        replyMarkup: ReplyMarkup.fromJson(json['reply_markup']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'sender': this.sender,
        'chat_id': this.chatId,
        'sending_state': this.sendingState,
        'scheduling_state': this.schedulingState,
        'is_outgoing': this.isOutgoing,
        'is_pinned': this.isPinned,
        'can_be_edited': this.canBeEdited,
        'can_be_forwarded': this.canBeForwarded,
        'can_be_deleted_only_for_self': this.canBeDeletedOnlyForSelf,
        'can_be_deleted_for_all_users': this.canBeDeletedForAllUsers,
        'can_get_statistics': this.canGetStatistics,
        'can_get_message_thread': this.canGetMessageThread,
        'is_channel_post': this.isChannelPost,
        'contains_unread_mention': this.containsUnreadMention,
        'date': this.date,
        'edit_date': this.editDate,
        'forward_info': this.forwardInfo,
        'interaction_info': this.interactionInfo,
        'reply_in_chat_id': this.replyInChatId,
        'reply_to_message_id': this.replyToMessageId,
        'message_thread_id': this.messageThreadId,
        'ttl': this.ttl,
        'ttl_expires_in': this.ttlExpiresIn,
        'via_bot_user_id': this.viaBotUserId,
        'author_signature': this.authorSignature,
        'media_album_id': this.mediaAlbumId,
        'restriction_reason': this.restrictionReason,
        'content': this.content,
        'reply_markup': this.replyMarkup,
        '@type': CONSTRUCTOR
      };
}
