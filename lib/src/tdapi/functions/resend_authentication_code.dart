import '../tdapi.dart';

/// Re-sends an authentication code to the user. Works only when the current
/// state is authorizationStateWaitCode and the next_code_type of the result
/// not null
/// Returns [Ok]
class ResendAuthenticationCode extends TdFunction {
  ResendAuthenticationCode({this.extra});

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'resendAuthenticationCode';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
