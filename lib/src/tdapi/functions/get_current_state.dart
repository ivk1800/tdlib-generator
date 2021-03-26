import '../tdapi.dart';

/// Returns all updates needed to restore current TDLib state, i.e. all actual
/// and others. This is especially useful if TDLib is run in a separate
/// Can be called before initialization
/// Returns [Updates]
class GetCurrentState extends TdFunction {
  GetCurrentState();

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getCurrentState';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
