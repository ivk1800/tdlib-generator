part of '../tdapi.dart';

/// Group.Objects
/// Represents a list of users
class Users extends TdObject {
  Users({required this.totalCount, required this.userIds});

  /// total_count Approximate total count of users found
  final int totalCount;

  /// user_ids A list of user identifiers
  final List<int> userIds;

  static const String CONSTRUCTOR = 'users';

  static Users? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Users(
        totalCount: json['total_count'],
        userIds: List<int>.from(
            (json['user_ids}'] ?? []).map((item) => json['int']).toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'total_count': this.totalCount,
        'user_ids': this.userIds,
        '@type': CONSTRUCTOR
      };
}
