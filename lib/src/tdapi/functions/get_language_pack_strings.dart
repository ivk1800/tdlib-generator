part of '../tdapi.dart';

/// Group.Functions
/// Returns strings from a language pack in the current localization target by their keys. Can be called before authorization
class GetLanguagePackStrings extends TdFunction {
  GetLanguagePackStrings({required this.languagePackId, required this.keys});

  /// language_pack_id Language pack identifier of the strings to be returned
  final String languagePackId;

  /// keys Language pack keys of the strings to be returned; leave empty to request all available strings
  final List<String> keys;

  /// callback sign
  dynamic extra;

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
