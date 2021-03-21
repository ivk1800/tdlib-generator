import '../tdapi.dart';

/// TDLib is closing, all subsequent queries will be answered with the error
/// Note that closing TDLib can take a while. All resources will be freed only
/// authorizationStateClosed has been received
class AuthorizationStateClosing extends AuthorizationState {
  const AuthorizationStateClosing();

  static const String CONSTRUCTOR = 'authorizationStateClosing';

  static AuthorizationStateClosing? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const AuthorizationStateClosing();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
