part of '../tdapi.dart';

/// Group.Functions
/// Changes user privacy settings
class SetUserPrivacySettingRules extends TdFunction {
  SetUserPrivacySettingRules({required this.setting, required this.rules});

  /// setting The privacy setting
  final UserPrivacySetting setting;

  /// rules The new privacy rules
  final UserPrivacySettingRules rules;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'setUserPrivacySettingRules';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'setting': this.setting,
        'rules': this.rules,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
