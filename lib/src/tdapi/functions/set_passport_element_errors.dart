part of '../tdapi.dart';

/// Group.Functions
/// Informs the user that some of the elements in their Telegram Passport contain errors; for bots only. The user will not be able to resend the elements, until the errors are fixed
class SetPassportElementErrors extends TdFunction {
  SetPassportElementErrors({required this.userId, required this.errors});

  /// user_id User identifier
  final int userId;

  /// errors The errors
  final List<InputPassportElementError> errors;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'setPassportElementErrors';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_id': this.userId,
        'errors': this.errors,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
