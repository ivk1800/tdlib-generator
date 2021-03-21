part of '../tdapi.dart';

/// Invites users to a group call. Sends a service message of type
/// for voice chats
class InviteGroupCallParticipants extends TdFunction {
  InviteGroupCallParticipants(
      {required this.groupCallId, required this.userIds});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [userIds] User identifiers. At most 10 users can be invited simultaneously
  final List<int> userIds;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'inviteGroupCallParticipants';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'user_ids': this.userIds,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
