import '../tdapi.dart';

/// Contains a list of sessions
class Sessions extends TdObject {
  Sessions({required this.sessions, this.extra});

  /// [sessions] List of sessions
  final List<Session> sessions;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'sessions';

  static Sessions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Sessions(
        sessions: List<Session>.from((json['sessions}'] ?? [])
            .map((item) => Session.fromJson(item))
            .toList()),
        extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'sessions': sessions.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
