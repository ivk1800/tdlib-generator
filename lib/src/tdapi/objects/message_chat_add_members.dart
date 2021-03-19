part of '../tdapi.dart';

/// Group.Objects
/// New chat members were added
class MessageChatAddMembers extends MessageContent {
  MessageChatAddMembers({required this.memberUserIds});

  /// member_user_ids User identifiers of the new members
  final List<int> memberUserIds;

  static const String CONSTRUCTOR = 'messageChatAddMembers';

  static MessageChatAddMembers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatAddMembers(
        memberUserIds: List<int>.from((json['member_user_ids}'] ?? [])
            .map((item) => json['int'])
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'member_user_ids': this.memberUserIds, '@type': CONSTRUCTOR};
}
