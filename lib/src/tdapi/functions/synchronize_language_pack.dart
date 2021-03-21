part of '../tdapi.dart';

/// Fetches the latest versions of all strings from a language pack in the current localization target from the server. This method shouldn't be called explicitly for the current used/base language packs. Can be called before authorization
class SynchronizeLanguagePack extends TdFunction {
  SynchronizeLanguagePack({required this.languagePackId});

  /// [languagePackId] Language pack identifier
  final String languagePackId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'synchronizeLanguagePack';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'language_pack_id': this.languagePackId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
