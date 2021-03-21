part of '../tdapi.dart';

/// Deletes the account of the current user, deleting all information associated with the user from the server. The phone number of the account can be used to create a new account. Can be called before authorization when the current authorization state is authorizationStateWaitPassword
class DeleteAccount extends TdFunction {
  DeleteAccount({required this.reason});

  /// [reason] The reason why the account was deleted; optional
  final String reason;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'deleteAccount';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'reason': this.reason, '@type': CONSTRUCTOR, '@extra': this.extra};
}
