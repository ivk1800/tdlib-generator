import '../tdapi.dart';

/// Returns all available Telegram Passport elements
/// Returns [PassportElements]
class GetAllPassportElements extends TdFunction {
  GetAllPassportElements({required this.password});

  /// [password] Password of the current user
  final String password;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getAllPassportElements';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'password': this.password, '@type': CONSTRUCTOR, '@extra': this.extra};
}
