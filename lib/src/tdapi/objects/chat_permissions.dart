part of '../tdapi.dart';

/// Group.Objects
/// Describes actions that a user is allowed to take in a chat
class ChatPermissions extends TdObject {
  ChatPermissions(
      {required this.canSendMessages,
      required this.canSendMediaMessages,
      required this.canSendPolls,
      required this.canSendOtherMessages,
      required this.canAddWebPagePreviews,
      required this.canChangeInfo,
      required this.canInviteUsers,
      required this.canPinMessages});

  /// can_send_messages True, if the user can send text messages, contacts, locations, and venues
  final bool canSendMessages;

  /// can_send_media_messages True, if the user can send audio files, documents, photos, videos, video notes, and voice notes. Implies can_send_messages permissions
  final bool canSendMediaMessages;

  /// can_send_polls True, if the user can send polls. Implies can_send_messages permissions
  final bool canSendPolls;

  /// can_send_other_messages True, if the user can send animations, games, stickers, and dice and use inline bots. Implies can_send_messages permissions
  final bool canSendOtherMessages;

  /// can_add_web_page_previews True, if the user may add a web page preview to their messages. Implies can_send_messages permissions
  final bool canAddWebPagePreviews;

  /// can_change_info True, if the user can change the chat title, photo, and other settings
  final bool canChangeInfo;

  /// can_invite_users True, if the user can invite new users to the chat
  final bool canInviteUsers;

  /// can_pin_messages True, if the user can pin messages
  final bool canPinMessages;

  static const String CONSTRUCTOR = 'chatPermissions';

  static ChatPermissions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatPermissions(
        canSendMessages: json['can_send_messages'],
        canSendMediaMessages: json['can_send_media_messages'],
        canSendPolls: json['can_send_polls'],
        canSendOtherMessages: json['can_send_other_messages'],
        canAddWebPagePreviews: json['can_add_web_page_previews'],
        canChangeInfo: json['can_change_info'],
        canInviteUsers: json['can_invite_users'],
        canPinMessages: json['can_pin_messages']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'can_send_messages': this.canSendMessages,
        'can_send_media_messages': this.canSendMediaMessages,
        'can_send_polls': this.canSendPolls,
        'can_send_other_messages': this.canSendOtherMessages,
        'can_add_web_page_previews': this.canAddWebPagePreviews,
        'can_change_info': this.canChangeInfo,
        'can_invite_users': this.canInviteUsers,
        'can_pin_messages': this.canPinMessages,
        '@type': CONSTRUCTOR
      };
}
