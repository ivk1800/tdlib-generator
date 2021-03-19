part of '../tdapi.dart';

/// Group.Functions
/// Returns all available Telegram Passport elements
class GetAllPassportElements extends TdFunction {
  GetAllPassportElements({required this.password});

  /// password Password of the current user
  final String password;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getAllPassportElements';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'password': this.password, '@type': CONSTRUCTOR, '@extra': this.extra};
}
