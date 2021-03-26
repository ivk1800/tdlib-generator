import '../tdapi.dart';

/// Returns a list of sticker sets attached to a file. Currently only photos
/// videos can have attached sticker sets
/// Returns [StickerSets]
class GetAttachedStickerSets extends TdFunction {
  GetAttachedStickerSets({required this.fileId, this.extra});

  /// [fileId] File identifier
  final int fileId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getAttachedStickerSets';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'file_id': this.fileId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
