import '../tdapi.dart';

/// Returns all entities (mentions, hashtags, cashtags, bot commands, bank
/// numbers, URLs, and email addresses) contained in the text. Can be called
/// Returns [TextEntities]
class GetTextEntities extends TdFunction {
  GetTextEntities({required this.text, this.extra});

  /// [text] The text in which to look for entites
  final String text;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getTextEntities';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'text': this.text, '@type': CONSTRUCTOR, '@extra': this.extra};
}
