part of '../tdapi.dart';

/// Group.Functions
/// Deletes saved order info
class DeleteSavedOrderInfo extends TdFunction {
  DeleteSavedOrderInfo();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'deleteSavedOrderInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
