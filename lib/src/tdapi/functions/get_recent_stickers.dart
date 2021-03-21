part of '../tdapi.dart';

/// Returns a list of recently used stickers
class GetRecentStickers extends TdFunction {
  GetRecentStickers({required this.isAttached});

  /// [isAttached] Pass true to return stickers and masks that were recently attached to photos or video files; pass false to return recently sent stickers
  final bool isAttached;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getRecentStickers';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'is_attached': this.isAttached,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
