part of '../tdapi.dart';

/// Group.Objects
/// The list of suggested to the user actions has changed
class UpdateSuggestedActions extends Update {
  UpdateSuggestedActions(
      {required this.addedActions, required this.removedActions});

  /// added_actions Added suggested actions
  final List<SuggestedAction> addedActions;

  /// removed_actions Removed suggested actions
  final List<SuggestedAction> removedActions;

  static const String CONSTRUCTOR = 'updateSuggestedActions';

  static UpdateSuggestedActions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateSuggestedActions(
        addedActions: List<SuggestedAction>.from((json['added_actions}'] ?? [])
            .map((item) => SuggestedAction.fromJson(json['SuggestedAction'])!)
            .toList()),
        removedActions: List<SuggestedAction>.from((json['removed_actions}'] ??
                [])
            .map((item) => SuggestedAction.fromJson(json['SuggestedAction'])!)
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'added_actions': this.addedActions,
        'removed_actions': this.removedActions,
        '@type': CONSTRUCTOR
      };
}
