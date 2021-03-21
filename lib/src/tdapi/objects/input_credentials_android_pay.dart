part of '../tdapi.dart';

/// Applies if a user enters new credentials using Android Pay
class InputCredentialsAndroidPay extends InputCredentials {
  InputCredentialsAndroidPay({required this.data});

  /// [data] JSON-encoded data with the credential identifier
  final String data;

  static const String CONSTRUCTOR = 'inputCredentialsAndroidPay';

  static InputCredentialsAndroidPay? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputCredentialsAndroidPay(data: json['data']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'data': this.data, '@type': CONSTRUCTOR};
}
