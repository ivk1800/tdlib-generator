part of '../tdapi.dart';

/// Group.Functions
/// Edits information about a custom local language pack in the current localization target. Can be called before authorization
class EditCustomLanguagePackInfo extends TdFunction {
  EditCustomLanguagePackInfo({required this.info});

  /// info New information about the custom local language pack
  final LanguagePackInfo info;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'editCustomLanguagePackInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'info': this.info, '@type': CONSTRUCTOR, '@extra': this.extra};
}
