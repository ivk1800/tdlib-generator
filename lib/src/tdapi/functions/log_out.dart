part of '../tdapi.dart';

/// Closes the TDLib instance after a proper logout. Requires an available network connection. All local data will be destroyed. After the logout completes, updateAuthorizationState with authorizationStateClosed will be sent
class LogOut extends TdFunction {
  LogOut();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'logOut';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
