import '../tdapi.dart';

/// Returns strings from a language pack in the current localization target by
/// keys. Can be called before authorization
class GetLanguagePackStrings extends TdFunction {
  GetLanguagePackStrings({required this.languagePackId, required this.keys});

  /// [languagePackId] Language pack identifier of the strings to be returned
  final String languagePackId;

  /// [keys] Language pack keys of the strings to be returned; leave empty to
  /// all available strings
  final List<String> keys;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getLanguagePackStrings';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'language_pack_id': this.languagePackId,
        'keys': this.keys,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
