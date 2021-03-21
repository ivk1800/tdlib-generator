part of '../tdapi.dart';

/// Returns a user that can be contacted to get support
class GetSupportUser extends TdFunction {
  GetSupportUser();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getSupportUser';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
