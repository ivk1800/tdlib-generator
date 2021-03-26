import '../tdapi.dart';

/// Returns full information about a user by their identifier
/// Returns [UserFullInfo]
class GetUserFullInfo extends TdFunction {
  GetUserFullInfo({required this.userId});

  /// [userId] User identifier
  final int userId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getUserFullInfo';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'user_id': this.userId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
