part of '../tdapi.dart';

/// Discards a group call. Requires can_manage_voice_chats rights in the corresponding chat
class DiscardGroupCall extends TdFunction {
  DiscardGroupCall({required this.groupCallId});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'discardGroupCall';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
