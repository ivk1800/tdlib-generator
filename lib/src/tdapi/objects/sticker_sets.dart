part of '../tdapi.dart';

/// Group.Objects
/// Represents a list of sticker sets
class StickerSets extends TdObject {
  StickerSets({required this.totalCount, required this.sets});

  /// total_count Approximate total number of sticker sets found
  final int totalCount;

  /// sets List of sticker sets
  final List<StickerSetInfo> sets;

  static const String CONSTRUCTOR = 'stickerSets';

  static StickerSets? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StickerSets(
        totalCount: json['total_count'],
        sets: List<StickerSetInfo>.from((json['sets}'] ?? [])
            .map((item) => StickerSetInfo.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'total_count': this.totalCount, 'sets': this.sets, '@type': CONSTRUCTOR};
}
