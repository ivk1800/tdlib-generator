import '../tdapi.dart';

/// Deletes saved credentials for all payment provider bots
class DeleteSavedCredentials extends TdFunction {
  DeleteSavedCredentials();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'deleteSavedCredentials';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
