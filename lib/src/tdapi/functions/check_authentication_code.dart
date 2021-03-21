import '../tdapi.dart';

/// Checks the authentication code. Works only when the current authorization
/// is authorizationStateWaitCode
class CheckAuthenticationCode extends TdFunction {
  CheckAuthenticationCode({required this.code});

  /// [code] The verification code received via SMS, Telegram message, phone
  /// or flash call
  final String code;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'checkAuthenticationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'code': this.code, '@type': CONSTRUCTOR, '@extra': this.extra};
}
