import '../tdapi.dart';

/// Contains information about the current localization target
class LocalizationTargetInfo extends TdObject {
  LocalizationTargetInfo({required this.languagePacks, this.extra});

  /// [languagePacks] List of available language packs for this application
  final List<LanguagePackInfo> languagePacks;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'localizationTargetInfo';

  static LocalizationTargetInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LocalizationTargetInfo(
        languagePacks: List<LanguagePackInfo>.from(
            (json['language_packs}'] ?? [])
                .map((item) => LanguagePackInfo.fromJson(item))
                .toList()),
        extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'language_packs': this.languagePacks,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
