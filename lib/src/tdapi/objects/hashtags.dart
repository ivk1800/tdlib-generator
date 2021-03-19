part of '../tdapi.dart';

/// Group.Objects
/// Contains a list of hashtags
class Hashtags extends TdObject {
  Hashtags({required this.hashtags});

  /// hashtags A list of hashtags
  final List<String> hashtags;

  static const String CONSTRUCTOR = 'hashtags';

  static Hashtags? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Hashtags(
        hashtags: List<String>.from(
            (json['hashtags}'] ?? []).map((item) => json['String']).toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'hashtags': this.hashtags, '@type': CONSTRUCTOR};
}
