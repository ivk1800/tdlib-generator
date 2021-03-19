part of '../tdapi.dart';

/// Group.Objects
/// Contains a list of text entities
class TextEntities extends TdObject {
  TextEntities({required this.entities});

  /// entities List of text entities
  final List<TextEntity> entities;

  static const String CONSTRUCTOR = 'textEntities';

  static TextEntities? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextEntities(
        entities: List<TextEntity>.from((json['entities}'] ?? [])
            .map((item) => TextEntity.fromJson(json['TextEntity'])!)
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'entities': this.entities, '@type': CONSTRUCTOR};
}
