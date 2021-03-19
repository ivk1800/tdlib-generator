part of '../tdapi.dart';

/// Group.Objects
/// The list of saved animations was updated
class UpdateSavedAnimations extends Update {
  UpdateSavedAnimations({required this.animationIds});

  /// animation_ids The new list of file identifiers of saved animations
  final List<int> animationIds;

  static const String CONSTRUCTOR = 'updateSavedAnimations';

  static UpdateSavedAnimations? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateSavedAnimations(
        animationIds: List<int>.from((json['animation_ids}'] ?? [])
            .map((item) => json['int'])
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'animation_ids': this.animationIds, '@type': CONSTRUCTOR};
}
