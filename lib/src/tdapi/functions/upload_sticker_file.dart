import '../tdapi.dart';

/// Uploads a PNG image with a sticker; for bots only; returns the uploaded
/// Returns [File]
class UploadStickerFile extends TdFunction {
  UploadStickerFile(
      {required this.userId, required this.pngSticker, this.extra});

  /// [userId] Sticker file owner
  final int userId;

  /// [pngSticker] PNG image with the sticker; must be up to 512 KB in size and
  /// in 512x512 square
  final InputFile pngSticker;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'uploadStickerFile';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_id': this.userId,
        'png_sticker': this.pngSticker.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
