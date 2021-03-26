import '../tdapi.dart';

/// Requests to send a password recovery code to an email address that was
/// set up. Works only when the current authorization state is
/// Returns [Ok]
class RequestAuthenticationPasswordRecovery extends TdFunction {
  RequestAuthenticationPasswordRecovery({this.extra});

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'requestAuthenticationPasswordRecovery';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
