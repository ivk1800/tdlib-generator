import '../tdapi.dart';

/// Contains a TDLib internal log verbosity level
class LogVerbosityLevel extends TdObject {
  LogVerbosityLevel({required this.verbosityLevel, this.extra});

  /// [verbosityLevel] Log verbosity level
  final int verbosityLevel;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'logVerbosityLevel';

  static LogVerbosityLevel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LogVerbosityLevel(
        verbosityLevel: json['verbosity_level'], extra: json['@extra']);
  }

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'verbosity_level': this.verbosityLevel,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
