import '../tdapi.dart';

/// Represents a list of users
class Users extends TdObject {
  Users({required this.totalCount, required this.userIds, this.extra});

  /// [totalCount] Approximate total count of users found
  final int totalCount;

  /// [userIds] A list of user identifiers
  final List<int> userIds;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'users';

  static Users? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Users(
        totalCount: json['total_count'],
        userIds: List<int>.from(
            (json['user_ids}'] ?? []).map((item) => json['int']).toList()),
        extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'total_count': this.totalCount,
        'user_ids': this.userIds,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
