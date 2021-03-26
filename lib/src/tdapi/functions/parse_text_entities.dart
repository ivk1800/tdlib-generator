import '../tdapi.dart';

/// Parses Bold, Italic, Underline, Strikethrough, Code, Pre, PreCode, TextUrl
/// MentionName entities contained in the text. Can be called synchronously
/// Returns [FormattedText]
class ParseTextEntities extends TdFunction {
  ParseTextEntities({required this.text, required this.parseMode, this.extra});

  /// [text] The text to parse
  final String text;

  /// [parseMode] Text parse mode
  final TextParseMode parseMode;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'parseTextEntities';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'text': this.text,
        'parse_mode': this.parseMode.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
