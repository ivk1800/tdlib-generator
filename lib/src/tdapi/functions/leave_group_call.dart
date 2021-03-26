import '../tdapi.dart';

/// Leaves a group call
/// Returns [Ok]
class LeaveGroupCall extends TdFunction {
  LeaveGroupCall({required this.groupCallId, this.extra});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'leaveGroupCall';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
