import '../tdapi.dart';

/// Toggles whether new participants of a group call can be unmuted only by
/// of the group call. Requires can_manage_voice_chats rights in the
/// chat and allowed_change_mute_mew_participants group call flag
/// Returns [Ok]
class ToggleGroupCallMuteNewParticipants extends TdFunction {
  ToggleGroupCallMuteNewParticipants(
      {required this.groupCallId, required this.muteNewParticipants});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [muteNewParticipants] New value of the mute_new_participants setting
  final bool muteNewParticipants;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'toggleGroupCallMuteNewParticipants';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'mute_new_participants': this.muteNewParticipants,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
