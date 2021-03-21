part of '../tdapi.dart';

/// Group.Objects
/// A concatenation of rich texts
class RichTexts extends RichText {
  RichTexts({required this.texts});

  /// texts Texts
  final List<RichText> texts;

  static const String CONSTRUCTOR = 'richTexts';

  static RichTexts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTexts(
        texts: List<RichText>.from((json['texts}'] ?? [])
            .map((item) => RichText.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'texts': this.texts, '@type': CONSTRUCTOR};
}
