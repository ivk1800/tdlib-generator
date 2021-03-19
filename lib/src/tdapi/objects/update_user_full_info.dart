part of '../tdapi.dart';

/// Group.Objects
/// Some data from userFullInfo has been changed
class UpdateUserFullInfo extends Update {
  UpdateUserFullInfo({required this.userId, required this.userFullInfo});

  /// user_id User identifier
  final int userId;

  /// user_full_info New full information about the user
  final UserFullInfo userFullInfo;

  static const String CONSTRUCTOR = 'updateUserFullInfo';

  static UpdateUserFullInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateUserFullInfo(
        userId: json['user_id'],
        userFullInfo: UserFullInfo.fromJson(json['user_full_info'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_id': this.userId,
        'user_full_info': this.userFullInfo,
        '@type': CONSTRUCTOR
      };
}
