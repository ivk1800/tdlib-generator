part of '../tdapi.dart';

/// Group.Objects
/// The user heard background noise
class CallProblemNoise extends CallProblem {
  const CallProblemNoise();

  static const String CONSTRUCTOR = 'callProblemNoise';

  static CallProblemNoise? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallProblemNoise();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
