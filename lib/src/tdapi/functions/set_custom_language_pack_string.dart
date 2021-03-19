part of '../tdapi.dart';

/// Group.Functions
/// Adds, edits or deletes a string in a custom local language pack. Can be called before authorization
class SetCustomLanguagePackString extends TdFunction {
  SetCustomLanguagePackString(
      {required this.languagePackId, required this.newString});

  /// language_pack_id Identifier of a previously added custom local language pack in the current localization target
  final String languagePackId;

  /// new_string New language pack string
  final LanguagePackString newString;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'setCustomLanguagePackString';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'language_pack_id': this.languagePackId,
        'new_string': this.newString,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
