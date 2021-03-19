part of '../tdapi.dart';

/// Group.Functions
/// Returns auto-download settings presets for the current user
class GetAutoDownloadSettingsPresets extends TdFunction {
  GetAutoDownloadSettingsPresets();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getAutoDownloadSettingsPresets';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
