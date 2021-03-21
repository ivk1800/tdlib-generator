import '../tdapi.dart';

/// Describes a group call
class GroupCall extends TdObject {
  GroupCall(
      {required this.id,
      required this.isActive,
      required this.isJoined,
      required this.needRejoin,
      required this.canUnmuteSelf,
      required this.canBeManaged,
      required this.participantCount,
      required this.loadedAllParticipants,
      required this.recentSpeakers,
      required this.muteNewParticipants,
      required this.allowedChangeMuteNewParticipants,
      required this.duration});

  /// [id] Group call identifier
  final int id;

  /// [isActive] True, if the call is active
  final bool isActive;

  /// [isJoined] True, if the call is joined
  final bool isJoined;

  /// [needRejoin] True, if user was kicked from the call because of network
  /// and the call needs to be rejoined
  final bool needRejoin;

  /// [canUnmuteSelf] True, if the current user can unmute themself
  final bool canUnmuteSelf;

  /// [canBeManaged] True, if the current user can manage the group call
  final bool canBeManaged;

  /// [participantCount] Number of participants in the group call
  final int participantCount;

  /// [loadedAllParticipants] True, if all group call participants are loaded
  final bool loadedAllParticipants;

  /// [recentSpeakers] Recently speaking users in the group call
  final List<GroupCallRecentSpeaker> recentSpeakers;

  /// [muteNewParticipants] True, if only group call administrators can unmute
  /// participants
  final bool muteNewParticipants;

  /// [allowedChangeMuteNewParticipants] True, if group call administrators can
  /// or disable mute_new_participants setting
  final bool allowedChangeMuteNewParticipants;

  /// [duration] Call duration; for ended calls only
  final int duration;

  static const String CONSTRUCTOR = 'groupCall';

  static GroupCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCall(
        id: json['id'],
        isActive: json['is_active'],
        isJoined: json['is_joined'],
        needRejoin: json['need_rejoin'],
        canUnmuteSelf: json['can_unmute_self'],
        canBeManaged: json['can_be_managed'],
        participantCount: json['participant_count'],
        loadedAllParticipants: json['loaded_all_participants'],
        recentSpeakers: List<GroupCallRecentSpeaker>.from(
            (json['recent_speakers}'] ?? [])
                .map((item) => GroupCallRecentSpeaker.fromJson(item))
                .toList()),
        muteNewParticipants: json['mute_new_participants'],
        allowedChangeMuteNewParticipants:
            json['allowed_change_mute_new_participants'],
        duration: json['duration']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'is_active': this.isActive,
        'is_joined': this.isJoined,
        'need_rejoin': this.needRejoin,
        'can_unmute_self': this.canUnmuteSelf,
        'can_be_managed': this.canBeManaged,
        'participant_count': this.participantCount,
        'loaded_all_participants': this.loadedAllParticipants,
        'recent_speakers': this.recentSpeakers,
        'mute_new_participants': this.muteNewParticipants,
        'allowed_change_mute_new_participants':
            this.allowedChangeMuteNewParticipants,
        'duration': this.duration,
        '@type': CONSTRUCTOR
      };
}
