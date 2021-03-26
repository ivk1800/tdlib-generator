import '../tdapi.dart';

/// Closes the TDLib instance, destroying all local data without a proper
/// The current user session will remain in the list of all active sessions.
/// local data will be destroyed. After the destruction completes
/// with authorizationStateClosed will be sent. Can be called before
/// Returns [Ok]
class Destroy extends TdFunction {
  Destroy();

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'destroy';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
