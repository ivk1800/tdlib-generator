import '../tdapi.dart';

/// Re-sends an authentication code to the user. Works only when the current
/// state is authorizationStateWaitCode and the next_code_type of the result
/// not null
class ResendAuthenticationCode extends TdFunction {
  ResendAuthenticationCode();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'resendAuthenticationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
