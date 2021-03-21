import '../tdapi.dart';

/// A text with some entities
class FormattedText extends TdObject {
  FormattedText({required this.text, required this.entities, this.extra});

  /// [text] The text
  final String text;

  /// [entities] Entities contained in the text. Entities can be nested, but
  /// not mutually intersect with each other.. Pre, Code and PreCode entities
  /// contain other entities. Bold, Italic, Underline and Strikethrough entities
  /// contain and to be contained in all other entities. All other entities
  /// contain each other
  final List<TextEntity> entities;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'formattedText';

  static FormattedText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FormattedText(
        text: json['text'],
        entities: List<TextEntity>.from((json['entities}'] ?? [])
            .map((item) => TextEntity.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'text': this.text,
        'entities': this.entities,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
