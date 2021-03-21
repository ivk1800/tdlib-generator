part of '../tdapi.dart';

/// No information on the user besides the user identifier is available, yet
/// user has not been deleted. This object is extremely rare and must be
/// like a deleted user. It is not possible to perform any actions on users of
/// type
class UserTypeUnknown extends UserType {
  const UserTypeUnknown();

  static const String CONSTRUCTOR = 'userTypeUnknown';

  static UserTypeUnknown? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserTypeUnknown();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
