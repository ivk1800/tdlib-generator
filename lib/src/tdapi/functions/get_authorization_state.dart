import '../tdapi.dart';

/// Returns the current authorization state; this is an offline request. For
/// purposes only. Use updateAuthorizationState instead to maintain the
/// authorization state. Can be called before initialization
class GetAuthorizationState extends TdFunction {
  GetAuthorizationState();

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getAuthorizationState';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
