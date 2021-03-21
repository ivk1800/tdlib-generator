part of '../tdapi.dart';

/// Group.Objects
/// Describes a join response for interaction with tgcalls
class GroupCallJoinResponse extends TdObject {
  GroupCallJoinResponse({required this.payload, required this.candidates});

  /// payload Join response payload to pass to tgcalls
  final GroupCallPayload payload;

  /// candidates Join response candidates to pass to tgcalls
  final List<GroupCallJoinResponseCandidate> candidates;

  static const String CONSTRUCTOR = 'groupCallJoinResponse';

  static GroupCallJoinResponse? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallJoinResponse(
        payload: GroupCallPayload.fromJson(json['payload'])!,
        candidates: List<GroupCallJoinResponseCandidate>.from(
            (json['candidates}'] ?? [])
                .map((item) => GroupCallJoinResponseCandidate.fromJson(item))
                .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'payload': this.payload,
        'candidates': this.candidates,
        '@type': CONSTRUCTOR
      };
}
