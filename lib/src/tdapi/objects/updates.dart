part of '../tdapi.dart';

/// Group.Objects
/// Contains a list of updates
class Updates extends TdObject {
  Updates({required this.updates});

  /// updates List of updates
  final List<Update> updates;

  static const String CONSTRUCTOR = 'updates';

  static Updates? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Updates(
        updates: List<Update>.from((json['updates}'] ?? [])
            .map((item) => Update.fromJson(json['Update'])!)
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'updates': this.updates, '@type': CONSTRUCTOR};
}
