import '../tdapi.dart';

/// Closes the TDLib instance. All databases will be flushed to disk and
/// closed. After the close completes, updateAuthorizationState with
/// will be sent. Can be called before initialization
class Close extends TdFunction {
  Close();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'close';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
