part of '../tdapi.dart';

/// Returns information about a language pack. Returned language pack
/// may be different from a provided one. Can be called before authorization
class GetLanguagePackInfo extends TdFunction {
  GetLanguagePackInfo({required this.languagePackId});

  /// [languagePackId] Language pack identifier
  final String languagePackId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getLanguagePackInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'language_pack_id': this.languagePackId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
