import '../tdapi.dart';

/// Checks the authentication code sent to confirm a new phone number of the
/// Returns [Ok]
class CheckChangePhoneNumberCode extends TdFunction {
  CheckChangePhoneNumberCode({required this.code});

  /// [code] Verification code received by SMS, phone call or flash call
  final String code;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'checkChangePhoneNumberCode';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'code': this.code, '@type': CONSTRUCTOR, '@extra': this.extra};
}
