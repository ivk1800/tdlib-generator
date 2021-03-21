part of '../tdapi.dart';

/// Terminates a session of the current user
class TerminateSession extends TdFunction {
  TerminateSession({required this.sessionId});

  /// [sessionId] Session identifier
  final int sessionId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'terminateSession';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'session_id': this.sessionId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
