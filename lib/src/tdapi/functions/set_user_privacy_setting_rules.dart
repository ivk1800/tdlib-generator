import '../tdapi.dart';

/// Changes user privacy settings
/// Returns [Ok]
class SetUserPrivacySettingRules extends TdFunction {
  SetUserPrivacySettingRules(
      {required this.setting, required this.rules, this.extra});

  /// [setting] The privacy setting
  final UserPrivacySetting setting;

  /// [rules] The new privacy rules
  final UserPrivacySettingRules rules;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'setUserPrivacySettingRules';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'setting': this.setting.toJson(),
        'rules': this.rules.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
