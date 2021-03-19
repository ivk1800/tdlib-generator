part of '../tdapi.dart';

/// Group.Objects
/// A chat member was deleted
class PushMessageContentChatDeleteMember extends PushMessageContent {
  PushMessageContentChatDeleteMember(
      {required this.memberName,
      required this.isCurrentUser,
      required this.isLeft});

  /// member_name Name of the deleted member
  final String memberName;

  /// is_current_user True, if the current user was deleted from the group
  final bool isCurrentUser;

  /// is_left True, if the user has left the group themself
  final bool isLeft;

  static const String CONSTRUCTOR = 'pushMessageContentChatDeleteMember';

  static PushMessageContentChatDeleteMember? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentChatDeleteMember(
        memberName: json['member_name'],
        isCurrentUser: json['is_current_user'],
        isLeft: json['is_left']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'member_name': this.memberName,
        'is_current_user': this.isCurrentUser,
        'is_left': this.isLeft,
        '@type': CONSTRUCTOR
      };
}
