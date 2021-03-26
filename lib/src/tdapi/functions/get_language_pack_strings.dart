import '../tdapi.dart';

/// Returns strings from a language pack in the current localization target by
/// keys. Can be called before authorization
/// Returns [LanguagePackStrings]
class GetLanguagePackStrings extends TdFunction {
  GetLanguagePackStrings(
      {required this.languagePackId, required this.keys, this.extra});

  /// [languagePackId] Language pack identifier of the strings to be returned
  final String languagePackId;

  /// [keys] Language pack keys of the strings to be returned; leave empty to
  /// all available strings
  final List<String> keys;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getLanguagePackStrings';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'language_pack_id': this.languagePackId,
        'keys': keys.map((item) => item).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
