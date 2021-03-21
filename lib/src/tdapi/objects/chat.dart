part of '../tdapi.dart';

/// Group.Objects
/// A chat. (Can be a private chat, basic group, supergroup, or secret chat)
class Chat extends TdObject {
  Chat(
      {required this.id,
      required this.type,
      required this.title,
      ChatPhotoInfo? this.photo,
      required this.permissions,
      Message? this.lastMessage,
      required this.positions,
      required this.isMarkedAsUnread,
      required this.isBlocked,
      required this.hasScheduledMessages,
      required this.canBeDeletedOnlyForSelf,
      required this.canBeDeletedForAllUsers,
      required this.canBeReported,
      required this.defaultDisableNotification,
      required this.unreadCount,
      required this.lastReadInboxMessageId,
      required this.lastReadOutboxMessageId,
      required this.unreadMentionCount,
      required this.notificationSettings,
      ChatActionBar? this.actionBar,
      required this.voiceChatGroupCallId,
      required this.isVoiceChatEmpty,
      required this.replyMarkupMessageId,
      DraftMessage? this.draftMessage,
      required this.clientData});

  /// id Chat unique identifier
  final int id;

  /// type Type of the chat
  final ChatType type;

  /// title Chat title
  final String title;

  /// photo Chat photo; may be null
  final ChatPhotoInfo? photo;

  /// permissions Actions that non-administrator chat members are allowed to take in the chat
  final ChatPermissions permissions;

  /// last_message Last message in the chat; may be null
  final Message? lastMessage;

  /// positions Positions of the chat in chat lists
  final List<ChatPosition> positions;

  /// is_marked_as_unread True, if the chat is marked as unread
  final bool isMarkedAsUnread;

  /// is_blocked True, if the chat is blocked by the current user and private messages from the chat can't be received
  final bool isBlocked;

  /// has_scheduled_messages True, if the chat has scheduled messages
  final bool hasScheduledMessages;

  /// can_be_deleted_only_for_self True, if the chat messages can be deleted only for the current user while other users will continue to see the messages
  final bool canBeDeletedOnlyForSelf;

  /// can_be_deleted_for_all_users True, if the chat messages can be deleted for all users
  final bool canBeDeletedForAllUsers;

  /// can_be_reported True, if the chat can be reported to Telegram moderators through reportChat
  final bool canBeReported;

  /// default_disable_notification Default value of the disable_notification parameter, used when a message is sent to the chat
  final bool defaultDisableNotification;

  /// unread_count Number of unread messages in the chat
  final int unreadCount;

  /// last_read_inbox_message_id Identifier of the last read incoming message
  final int lastReadInboxMessageId;

  /// last_read_outbox_message_id Identifier of the last read outgoing message
  final int lastReadOutboxMessageId;

  /// unread_mention_count Number of unread messages with a mention/reply in the chat
  final int unreadMentionCount;

  /// notification_settings Notification settings for this chat
  final ChatNotificationSettings notificationSettings;

  /// action_bar Describes actions which should be possible to do through a chat action bar; may be null
  final ChatActionBar? actionBar;

  /// voice_chat_group_call_id Group call identifier of an active voice chat; 0 if none or unknown. The voice chat can be received through the method getGroupCall
  final int voiceChatGroupCallId;

  /// is_voice_chat_empty True, if an active voice chat is empty
  final bool isVoiceChatEmpty;

  /// reply_markup_message_id Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat
  final int replyMarkupMessageId;

  /// draft_message A draft of a message in the chat; may be null
  final DraftMessage? draftMessage;

  /// client_data Contains application-specific data associated with the chat. (For example, the chat scroll position or local chat notification settings can be stored here.) Persistent if the message database is used
  final String clientData;

  static const String CONSTRUCTOR = 'chat';

  static Chat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Chat(
        id: json['id'],
        type: ChatType.fromJson(json['type'])!,
        title: json['title'],
        photo: ChatPhotoInfo.fromJson(json['photo']),
        permissions: ChatPermissions.fromJson(json['permissions'])!,
        lastMessage: Message.fromJson(json['last_message']),
        positions: List<ChatPosition>.from((json['positions}'] ?? [])
            .map((item) => ChatPosition.fromJson(item))
            .toList()),
        isMarkedAsUnread: json['is_marked_as_unread'],
        isBlocked: json['is_blocked'],
        hasScheduledMessages: json['has_scheduled_messages'],
        canBeDeletedOnlyForSelf: json['can_be_deleted_only_for_self'],
        canBeDeletedForAllUsers: json['can_be_deleted_for_all_users'],
        canBeReported: json['can_be_reported'],
        defaultDisableNotification: json['default_disable_notification'],
        unreadCount: json['unread_count'],
        lastReadInboxMessageId: json['last_read_inbox_message_id'],
        lastReadOutboxMessageId: json['last_read_outbox_message_id'],
        unreadMentionCount: json['unread_mention_count'],
        notificationSettings:
            ChatNotificationSettings.fromJson(json['notification_settings'])!,
        actionBar: ChatActionBar.fromJson(json['action_bar']),
        voiceChatGroupCallId: json['voice_chat_group_call_id'],
        isVoiceChatEmpty: json['is_voice_chat_empty'],
        replyMarkupMessageId: json['reply_markup_message_id'],
        draftMessage: DraftMessage.fromJson(json['draft_message']),
        clientData: json['client_data']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'type': this.type,
        'title': this.title,
        'photo': this.photo,
        'permissions': this.permissions,
        'last_message': this.lastMessage,
        'positions': this.positions,
        'is_marked_as_unread': this.isMarkedAsUnread,
        'is_blocked': this.isBlocked,
        'has_scheduled_messages': this.hasScheduledMessages,
        'can_be_deleted_only_for_self': this.canBeDeletedOnlyForSelf,
        'can_be_deleted_for_all_users': this.canBeDeletedForAllUsers,
        'can_be_reported': this.canBeReported,
        'default_disable_notification': this.defaultDisableNotification,
        'unread_count': this.unreadCount,
        'last_read_inbox_message_id': this.lastReadInboxMessageId,
        'last_read_outbox_message_id': this.lastReadOutboxMessageId,
        'unread_mention_count': this.unreadMentionCount,
        'notification_settings': this.notificationSettings,
        'action_bar': this.actionBar,
        'voice_chat_group_call_id': this.voiceChatGroupCallId,
        'is_voice_chat_empty': this.isVoiceChatEmpty,
        'reply_markup_message_id': this.replyMarkupMessageId,
        'draft_message': this.draftMessage,
        'client_data': this.clientData,
        '@type': CONSTRUCTOR
      };
}
