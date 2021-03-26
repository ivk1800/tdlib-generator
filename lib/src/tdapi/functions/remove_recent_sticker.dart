import '../tdapi.dart';

/// Removes a sticker from the list of recently used stickers
/// Returns [Ok]
class RemoveRecentSticker extends TdFunction {
  RemoveRecentSticker({required this.isAttached, required this.sticker});

  /// [isAttached] Pass true to remove the sticker from the list of stickers
  /// attached to photo or video files; pass false to remove the sticker from
  /// list of recently sent stickers
  final bool isAttached;

  /// [sticker] Sticker file to delete
  final InputFile sticker;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'removeRecentSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'is_attached': this.isAttached,
        'sticker': this.sticker.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
