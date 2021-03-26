import '../tdapi.dart';

/// Edits information about a custom local language pack in the current
/// target. Can be called before authorization
/// Returns [Ok]
class EditCustomLanguagePackInfo extends TdFunction {
  EditCustomLanguagePackInfo({required this.info, this.extra});

  /// [info] New information about the custom local language pack
  final LanguagePackInfo info;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'editCustomLanguagePackInfo';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'info': this.info.toJson(), '@type': CONSTRUCTOR, '@extra': this.extra};
}
