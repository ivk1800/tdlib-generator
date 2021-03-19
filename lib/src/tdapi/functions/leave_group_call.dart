part of '../tdapi.dart';

/// Group.Functions
/// Leaves a group call
class LeaveGroupCall extends TdFunction {
  LeaveGroupCall({required this.groupCallId});

  /// group_call_id Group call identifier
  final int groupCallId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'leaveGroupCall';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
