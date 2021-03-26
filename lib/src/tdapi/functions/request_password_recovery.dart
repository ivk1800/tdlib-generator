import '../tdapi.dart';

/// Requests to send a password recovery code to an email address that was
/// set up
/// Returns [EmailAddressAuthenticationCodeInfo]
class RequestPasswordRecovery extends TdFunction {
  RequestPasswordRecovery();

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'requestPasswordRecovery';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
