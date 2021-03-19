part of '../tdapi.dart';

/// Group.Functions
/// Returns the current privacy settings
class GetUserPrivacySettingRules extends TdFunction {
  GetUserPrivacySettingRules({required this.setting});

  /// setting The privacy setting
  final UserPrivacySetting setting;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getUserPrivacySettingRules';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'setting': this.setting, '@type': CONSTRUCTOR, '@extra': this.extra};
}
