part of '../tdapi.dart';

/// Group.Functions
/// Returns a list of installed sticker sets
class GetInstalledStickerSets extends TdFunction {
  GetInstalledStickerSets({required this.isMasks});

  /// is_masks Pass true to return mask sticker sets; pass false to return ordinary sticker sets
  final bool isMasks;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getInstalledStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'is_masks': this.isMasks, '@type': CONSTRUCTOR, '@extra': this.extra};
}
