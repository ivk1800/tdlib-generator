part of '../tdapi.dart';

/// Returns an HTTP URL which can be used to automatically log in to the translation platform and suggest new emoji replacements. The URL will be valid for 30 seconds after generation
class GetEmojiSuggestionsUrl extends TdFunction {
  GetEmojiSuggestionsUrl({required this.languageCode});

  /// [languageCode] Language code for which the emoji replacements will be suggested
  final String languageCode;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getEmojiSuggestionsUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'language_code': this.languageCode,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
