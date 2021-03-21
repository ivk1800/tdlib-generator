import '../tdapi.dart';

/// Contains information about the period of inactivity after which the
/// user's account will automatically be deleted
class AccountTtl extends TdObject {
  AccountTtl({required this.days, this.extra});

  /// [days] Number of days of inactivity before the account will be flagged for
  /// should range from 30-366 days
  final int days;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'accountTtl';

  static AccountTtl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AccountTtl(days: json['days']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'days': this.days, '@type': CONSTRUCTOR, '@extra': this.extra};
}
