import '../tdapi.dart';

/// Contains a list of language pack strings
class LanguagePackStrings extends TdObject {
  LanguagePackStrings({required this.strings, this.extra});

  /// [strings] A list of language pack strings
  final List<LanguagePackString> strings;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'languagePackStrings';

  static LanguagePackStrings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LanguagePackStrings(
        strings: List<LanguagePackString>.from((json['strings'] ?? [])
            .map((item) => LanguagePackString.fromJson(item))
            .toList()),
        extra: json['@extra']);
  }

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'strings': strings.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
