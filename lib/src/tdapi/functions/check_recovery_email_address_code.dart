part of '../tdapi.dart';

/// Checks the 2-step verification recovery email address verification code
class CheckRecoveryEmailAddressCode extends TdFunction {
  CheckRecoveryEmailAddressCode({required this.code});

  /// [code] Verification code
  final String code;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'checkRecoveryEmailAddressCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'code': this.code, '@type': CONSTRUCTOR, '@extra': this.extra};
}
