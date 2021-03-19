part of '../tdapi.dart';

/// Group.Objects
/// Information about a group call was updated
class UpdateGroupCall extends Update {
  UpdateGroupCall({required this.groupCall});

  /// group_call New data about a group call
  final GroupCall groupCall;

  static const String CONSTRUCTOR = 'updateGroupCall';

  static UpdateGroupCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateGroupCall(groupCall: GroupCall.fromJson(json['group_call'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'group_call': this.groupCall, '@type': CONSTRUCTOR};
}
