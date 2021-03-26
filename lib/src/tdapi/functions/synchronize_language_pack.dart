import '../tdapi.dart';

/// Fetches the latest versions of all strings from a language pack in the
/// localization target from the server. This method shouldn't be called
/// for the current used/base language packs. Can be called before
/// Returns [Ok]
class SynchronizeLanguagePack extends TdFunction {
  SynchronizeLanguagePack({required this.languagePackId});

  /// [languagePackId] Language pack identifier
  final String languagePackId;

  /// callback sign
  dynamic? extra;

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
