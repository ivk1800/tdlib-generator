part of '../tdapi.dart';

/// Returns a list of sticker sets attached to a file. Currently only photos and videos can have attached sticker sets
class GetAttachedStickerSets extends TdFunction {
  GetAttachedStickerSets({required this.fileId});

  /// [fileId] File identifier
  final int fileId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getAttachedStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'file_id': this.fileId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
