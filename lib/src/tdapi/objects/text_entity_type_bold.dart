part of '../tdapi.dart';

/// Group.Objects
/// A bold text
class TextEntityTypeBold extends TextEntityType {
  const TextEntityTypeBold();

  static const String CONSTRUCTOR = 'textEntityTypeBold';

  static TextEntityTypeBold? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeBold();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
