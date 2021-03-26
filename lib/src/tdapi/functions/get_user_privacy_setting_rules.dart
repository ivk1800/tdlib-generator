import '../tdapi.dart';

/// Returns the current privacy settings
/// Returns [UserPrivacySettingRules]
class GetUserPrivacySettingRules extends TdFunction {
  GetUserPrivacySettingRules({required this.setting});

  /// [setting] The privacy setting
  final UserPrivacySetting setting;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getUserPrivacySettingRules';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'setting': this.setting.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
