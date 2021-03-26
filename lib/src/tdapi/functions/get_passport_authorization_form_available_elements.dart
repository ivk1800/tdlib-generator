import '../tdapi.dart';

/// Returns already available Telegram Passport elements suitable for
/// a Telegram Passport authorization form. Result can be received only once
/// each authorization form
/// Returns [PassportElementsWithErrors]
class GetPassportAuthorizationFormAvailableElements extends TdFunction {
  GetPassportAuthorizationFormAvailableElements(
      {required this.autorizationFormId, required this.password});

  /// [autorizationFormId] Authorization form identifier
  final int autorizationFormId;

  /// [password] Password of the current user
  final String password;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR =
      'getPassportAuthorizationFormAvailableElements';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'autorization_form_id': this.autorizationFormId,
        'password': this.password,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
