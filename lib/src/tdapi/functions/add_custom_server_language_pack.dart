part of '../tdapi.dart';

/// Group.Functions
/// Adds a custom server language pack to the list of installed language packs in current localization target. Can be called before authorization
class AddCustomServerLanguagePack extends TdFunction {
  AddCustomServerLanguagePack({required this.languagePackId});

  /// language_pack_id Identifier of a language pack to be added; may be different from a name that is used in an "https://t.me/setlanguage/" link
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
