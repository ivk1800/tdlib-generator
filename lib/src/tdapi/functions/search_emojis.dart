part of '../tdapi.dart';

/// Searches for emojis by keywords. Supported only if the file database is
class SearchEmojis extends TdFunction {
  SearchEmojis(
      {required this.text,
      required this.exactMatch,
      required this.inputLanguageCodes});

  /// [text] Text to search for
  final String text;

  /// [exactMatch] True, if only emojis, which exactly match text needs to be
  ///
  final bool exactMatch;

  /// [inputLanguageCodes] List of possible IETF language tags of the user's
  /// language; may be empty if unknown
  final List<String> inputLanguageCodes;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'searchEmojis';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'text': this.text,
        'exact_match': this.exactMatch,
        'input_language_codes': this.inputLanguageCodes,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
