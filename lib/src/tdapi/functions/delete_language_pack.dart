part of '../tdapi.dart';

/// Group.Functions
/// Deletes all information about a language pack in the current localization target. The language pack which is currently in use (including base language pack) or is being synchronized can't be deleted. Can be called before authorization
class DeleteLanguagePack extends TdFunction {
  DeleteLanguagePack({required this.languagePackId});

  /// language_pack_id Identifier of the language pack to delete
  final String languagePackId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'deleteLanguagePack';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'language_pack_id': this.languagePackId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
