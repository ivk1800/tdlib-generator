part of '../tdapi.dart';

/// Group.Functions
/// Returns saved order info, if any
class GetSavedOrderInfo extends TdFunction {
  GetSavedOrderInfo();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getSavedOrderInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
