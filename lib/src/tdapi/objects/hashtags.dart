import '../tdapi.dart';

/// Contains a list of hashtags
class Hashtags extends TdObject {
  Hashtags({required this.hashtags, this.extra});

  /// [hashtags] A list of hashtags
  final List<String> hashtags;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'hashtags';

  static Hashtags? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Hashtags(
        hashtags: List<String>.from(
            (json['hashtags'] ?? []).map((item) => json['String']).toList()),
        extra: json['@extra']);
  }

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'hashtags': hashtags.map((item) => item).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
