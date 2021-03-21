part of '../tdapi.dart';

/// Returns the current state of 2-step verification
class GetPasswordState extends TdFunction {
  GetPasswordState();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getPasswordState';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
