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
            (json['tags}'] ?? []).map((item) => json['String']).toList()),
        extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'tags': this.tags, '@type': CONSTRUCTOR, '@extra': this.extra};
}
