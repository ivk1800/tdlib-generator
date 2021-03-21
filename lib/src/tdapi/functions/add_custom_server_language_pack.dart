import '../tdapi.dart';

/// Adds a custom server language pack to the list of installed language packs
/// current localization target. Can be called before authorization
class AddCustomServerLanguagePack extends TdFunction {
  AddCustomServerLanguagePack({required this.languagePackId});

  /// [languagePackId] Identifier of a language pack to be added; may be
  /// from a name that is used in an "https://t.me/setlanguage/" link
  final String languagePackId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'addCustomServerLanguagePack';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'language_pack_id': this.languagePackId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
