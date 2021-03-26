import '../tdapi.dart';

/// Replaces text entities with Markdown formatting in a human-friendly
/// Entities that can't be represented in Markdown unambiguously are kept as
/// Can be called synchronously
/// Returns [FormattedText]
class GetMarkdownText extends TdFunction {
  GetMarkdownText({required this.text, this.extra});

  /// [text] The text
  final FormattedText text;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getMarkdownText';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'text': this.text.toJson(), '@type': CONSTRUCTOR, '@extra': this.extra};
}
