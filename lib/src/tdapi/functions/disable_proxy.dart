import '../tdapi.dart';

/// Disables the currently enabled proxy. Can be called before authorization
/// Returns [Ok]
class DisableProxy extends TdFunction {
  DisableProxy();

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'disableProxy';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
