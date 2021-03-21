import '../tdapi.dart';

/// Returns a 2-step verification recovery email address that was previously
/// up. This method can be used to verify a password provided by the user
class GetRecoveryEmailAddress extends TdFunction {
  GetRecoveryEmailAddress({required this.password});

  /// [password] The password for the current user
  final String password;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getRecoveryEmailAddress';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'password': this.password, '@type': CONSTRUCTOR, '@extra': this.extra};
}
