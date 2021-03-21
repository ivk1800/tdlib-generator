import '../tdapi.dart';

/// Contains some text
class Text extends TdObject {
  Text({required this.text, this.extra});

  /// [text] Text
  final String text;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'text';

  static Text? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Text(text: json['text'], extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'text': this.text, '@type': CONSTRUCTOR, '@extra': this.extra};
}
