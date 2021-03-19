part of '../tdapi.dart';

/// Group.Functions
/// Disables the currently enabled proxy. Can be called before authorization
class DisableProxy extends TdFunction {
  DisableProxy();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'disableProxy';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
