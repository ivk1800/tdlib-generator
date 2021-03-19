part of '../tdapi.dart';

/// Group.Objects
/// A rule to allow certain specified users to do something
class UserPrivacySettingRuleAllowUsers extends UserPrivacySettingRule {
  UserPrivacySettingRuleAllowUsers({required this.userIds});

  /// user_ids The user identifiers, total number of users in all rules must not exceed 1000
  final List<int> userIds;

  static const String CONSTRUCTOR = 'userPrivacySettingRuleAllowUsers';

  static UserPrivacySettingRuleAllowUsers? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserPrivacySettingRuleAllowUsers(
        userIds: List<int>.from(
            (json['user_ids}'] ?? []).map((item) => json['int']).toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'user_ids': this.userIds, '@type': CONSTRUCTOR};
}
