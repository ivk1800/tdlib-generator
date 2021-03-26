import '../tdapi.dart';

/// Terminates a session of the current user
/// Returns [Ok]
class TerminateSession extends TdFunction {
  TerminateSession({required this.sessionId, this.extra});

  /// [sessionId] Session identifier
  final int sessionId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'terminateSession';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'session_id': this.sessionId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
