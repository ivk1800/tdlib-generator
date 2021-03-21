import '../tdapi.dart';

/// Checks the authentication token of a bot; to log in as a bot. Works only
/// the current authorization state is authorizationStateWaitPhoneNumber. Can
/// used instead of setAuthenticationPhoneNumber and checkAuthenticationCode
/// log in
class CheckAuthenticationBotToken extends TdFunction {
  CheckAuthenticationBotToken({required this.token});

  /// [token] The bot token
  final String token;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'checkAuthenticationBotToken';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'token': this.token, '@type': CONSTRUCTOR, '@extra': this.extra};
}
