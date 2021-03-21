part of '../tdapi.dart';

/// Group.Objects
/// Describes a sticker
class Sticker extends TdObject {
  Sticker(
      {required this.setId,
      required this.width,
      required this.height,
      required this.emoji,
      required this.isAnimated,
      required this.isMask,
      MaskPosition? this.maskPosition,
      required this.outline,
      Thumbnail? this.thumbnail,
      required this.sticker});

  /// set_id The identifier of the sticker set to which the sticker belongs; 0 if none
  final int setId;

  /// width Sticker width; as defined by the sender
  final int width;

  /// height Sticker height; as defined by the sender
  final int height;

  /// emoji Emoji corresponding to the sticker
  final String emoji;

  /// is_animated True, if the sticker is an animated sticker in TGS format
  final bool isAnimated;

  /// is_mask True, if the sticker is a mask
  final bool isMask;

  /// mask_position Position where the mask should be placed; may be null
  final MaskPosition? maskPosition;

  /// outline Sticker's outline represented as a list of closed vector paths; may be empty. The coordinate system origin is in the upper-left corner
  final List<ClosedVectorPath> outline;

  /// thumbnail Sticker thumbnail in WEBP or JPEG format; may be null
  final Thumbnail? thumbnail;

  /// sticker File containing the sticker
  final File sticker;

  static const String CONSTRUCTOR = 'sticker';

  static Sticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Sticker(
        setId: int.tryParse(json['set_id']) ?? 0,
        width: json['width'],
        height: json['height'],
        emoji: json['emoji'],
        isAnimated: json['is_animated'],
        isMask: json['is_mask'],
        maskPosition: MaskPosition.fromJson(json['mask_position']),
        outline: List<ClosedVectorPath>.from((json['outline}'] ?? [])
            .map((item) => ClosedVectorPath.fromJson(item))
            .toList()),
        thumbnail: Thumbnail.fromJson(json['thumbnail']),
        sticker: File.fromJson(json['sticker'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'set_id': this.setId,
        'width': this.width,
        'height': this.height,
        'emoji': this.emoji,
        'is_animated': this.isAnimated,
        'is_mask': this.isMask,
        'mask_position': this.maskPosition,
        'outline': this.outline,
        'thumbnail': this.thumbnail,
        'sticker': this.sticker,
        '@type': CONSTRUCTOR
      };
}
