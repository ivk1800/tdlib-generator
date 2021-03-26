import '../tdapi.dart';

/// Checks the authentication password for correctness. Works only when the
/// authorization state is authorizationStateWaitPassword
/// Returns [Ok]
class CheckAuthenticationPassword extends TdFunction {
  CheckAuthenticationPassword({required this.password, this.extra});

  /// [password] The password to check
  final String password;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'checkAuthenticationPassword';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'password': this.password, '@type': CONSTRUCTOR, '@extra': this.extra};
}
