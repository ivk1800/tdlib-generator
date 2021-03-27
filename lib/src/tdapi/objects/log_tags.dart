import '../tdapi.dart';

/// Contains a list of available TDLib internal log tags
class LogTags extends TdObject {
  LogTags({required this.tags, this.extra});

  /// [tags] List of log tags
  final List<String> tags;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'logTags';

  static LogTags? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LogTags(
        tags: List<String>.from(
            (json['tags'] ?? []).map((item) => item).toList()),
        extra: json['@extra']);
  }

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'tags': tags.map((item) => item).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
