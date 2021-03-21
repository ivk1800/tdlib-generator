part of '../tdapi.dart';

/// Returns full information about a user by their identifier
class GetUserFullInfo extends TdFunction {
  GetUserFullInfo({required this.userId});

  /// [userId] User identifier
  final int userId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getUserFullInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'user_id': this.userId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
