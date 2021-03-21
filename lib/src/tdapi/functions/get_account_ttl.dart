part of '../tdapi.dart';

/// Returns the period of inactivity after which the account of the current user will automatically be deleted
class GetAccountTtl extends TdFunction {
  GetAccountTtl();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getAccountTtl';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
