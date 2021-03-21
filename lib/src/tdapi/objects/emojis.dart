import '../tdapi.dart';

/// Represents a list of emoji
class Emojis extends TdObject {
  Emojis({required this.emojis, this.extra});

  /// [emojis] List of emojis
  final List<String> emojis;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'emojis';

  static Emojis? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Emojis(
        emojis: List<String>.from(
            (json['emojis}'] ?? []).map((item) => json['String']).toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'emojis': this.emojis, '@type': CONSTRUCTOR, '@extra': this.extra};
}
