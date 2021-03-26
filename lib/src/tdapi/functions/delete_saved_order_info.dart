import '../tdapi.dart';

/// Deletes saved order info
/// Returns [Ok]
class DeleteSavedOrderInfo extends TdFunction {
  DeleteSavedOrderInfo();

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'deleteSavedOrderInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
