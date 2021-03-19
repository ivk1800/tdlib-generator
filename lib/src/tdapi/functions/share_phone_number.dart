part of '../tdapi.dart';

/// Group.Functions
/// Shares the phone number of the current user with a mutual contact. Supposed to be called when the user clicks on chatActionBarSharePhoneNumber
class SharePhoneNumber extends TdFunction {
  SharePhoneNumber({required this.userId});

  /// user_id Identifier of the user with whom to share the phone number. The user must be a mutual contact
  final int userId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'sharePhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'user_id': this.userId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
