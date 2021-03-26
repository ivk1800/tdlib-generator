import '../tdapi.dart';

/// Returns a string stored in the local database from the specified
/// target and language pack by its key. Returns a 404 error if the string is
/// found. Can be called synchronously
/// Returns [LanguagePackStringValue]
class GetLanguagePackString extends TdFunction {
  GetLanguagePackString(
      {required this.languagePackDatabasePath,
      required this.localizationTarget,
      required this.languagePackId,
      required this.key});

  /// [languagePackDatabasePath] Path to the language pack database in which
  /// are stored
  final String languagePackDatabasePath;

  /// [localizationTarget] Localization target to which the language pack
  ///
  final String localizationTarget;

  /// [languagePackId] Language pack identifier
  final String languagePackId;

  /// [key] Language pack key of the string to be returned
  final String key;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getLanguagePackString';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'language_pack_database_path': this.languagePackDatabasePath,
        'localization_target': this.localizationTarget,
        'language_pack_id': this.languagePackId,
        'key': this.key,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
