import '../tdapi.dart';

/// Returns all active sessions of the current user
/// Returns [Sessions]
class GetActiveSessions extends TdFunction {
  GetActiveSessions();

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getActiveSessions';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
