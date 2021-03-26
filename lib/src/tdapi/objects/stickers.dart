import '../tdapi.dart';

/// Represents a list of stickers
class Stickers extends TdObject {
  Stickers({required this.stickers, this.extra});

  /// [stickers] List of stickers
  final List<Sticker> stickers;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'stickers';

  static Stickers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Stickers(
        stickers: List<Sticker>.from((json['stickers}'] ?? [])
            .map((item) => Sticker.fromJson(item))
            .toList()),
        extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'stickers': stickers.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
