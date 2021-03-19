part of '../tdapi.dart';

/// Group.Functions
/// Checks phone number confirmation code
class CheckPhoneNumberConfirmationCode extends TdFunction {
  CheckPhoneNumberConfirmationCode({required this.code});

  /// code The phone number confirmation code
  final String code;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'checkPhoneNumberConfirmationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'code': this.code, '@type': CONSTRUCTOR, '@extra': this.extra};
}
