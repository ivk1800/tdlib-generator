import '../tdapi.dart';

/// Deletes saved credentials for all payment provider bots
/// Returns [Ok]
class DeleteSavedCredentials extends TdFunction {
  DeleteSavedCredentials({this.extra});

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'deleteSavedCredentials';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
