part of '../tdapi.dart';

/// Contains information about the payment method chosen by the user
abstract class InputCredentials extends TdObject {
  const InputCredentials();

  static const String CONSTRUCTOR = 'inputCredentials';

  /// Inherited by:
  /// [InputCredentialsSaved]
  /// [InputCredentialsNew]
  /// [InputCredentialsAndroidPay]
  /// [InputCredentialsApplePay]
  static InputCredentials? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case InputCredentialsSaved.CONSTRUCTOR:
        return InputCredentialsSaved.fromJson(json);
      case InputCredentialsNew.CONSTRUCTOR:
        return InputCredentialsNew.fromJson(json);
      case InputCredentialsAndroidPay.CONSTRUCTOR:
        return InputCredentialsAndroidPay.fromJson(json);
      case InputCredentialsApplePay.CONSTRUCTOR:
        return InputCredentialsApplePay.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
