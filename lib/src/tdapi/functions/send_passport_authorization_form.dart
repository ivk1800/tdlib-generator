part of '../tdapi.dart';

/// Group.Functions
/// Sends a Telegram Passport authorization form, effectively sharing data with the service. This method must be called after getPassportAuthorizationFormAvailableElements if some previously available elements are going to be reused
class SendPassportAuthorizationForm extends TdFunction {
  SendPassportAuthorizationForm(
      {required this.autorizationFormId, required this.types});

  /// autorization_form_id Authorization form identifier
  final int autorizationFormId;

  /// types Types of Telegram Passport elements chosen by user to complete the authorization form
  final List<PassportElementType> types;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'sendPassportAuthorizationForm';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'autorization_form_id': this.autorizationFormId,
        'types': this.types,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
