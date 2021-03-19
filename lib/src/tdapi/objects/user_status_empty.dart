part of '../tdapi.dart';

/// Group.Objects
/// The user status was never changed
class UserStatusEmpty extends UserStatus {
  const UserStatusEmpty();

  static const String CONSTRUCTOR = 'userStatusEmpty';

  static UserStatusEmpty? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserStatusEmpty();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
