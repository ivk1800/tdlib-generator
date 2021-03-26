import '../tdapi.dart';

/// Returns auto-download settings presets for the current user
/// Returns [AutoDownloadSettingsPresets]
class GetAutoDownloadSettingsPresets extends TdFunction {
  GetAutoDownloadSettingsPresets();

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getAutoDownloadSettingsPresets';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
