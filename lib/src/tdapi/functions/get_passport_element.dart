part of '../tdapi.dart';

/// Group.Functions
/// Returns one of the available Telegram Passport elements
class GetPassportElement extends TdFunction {
  GetPassportElement({required this.type, required this.password});

  /// type Telegram Passport element type
  final PassportElementType type;

  /// password Password of the current user
  final String password;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getPassportElement';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'type': this.type,
        'password': this.password,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
