import '../tdapi.dart';

/// Checks the authentication token of a bot; to log in as a bot. Works only
/// the current authorization state is authorizationStateWaitPhoneNumber. Can
/// used instead of setAuthenticationPhoneNumber and checkAuthenticationCode
/// log in
/// Returns [Ok]
class CheckAuthenticationBotToken extends TdFunction {
  CheckAuthenticationBotToken({required this.token, this.extra});

  /// [token] The bot token
  final String token;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'checkAuthenticationBotToken';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'token': this.token, '@type': CONSTRUCTOR, '@extra': this.extra};
}
