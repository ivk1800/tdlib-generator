part of '../tdapi.dart';

/// Clears the list of recently used stickers
class ClearRecentStickers extends TdFunction {
  ClearRecentStickers({required this.isAttached});

  /// [isAttached] Pass true to clear the list of stickers recently attached to
  /// or video files; pass false to clear the list of recently sent stickers
  final bool isAttached;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'clearRecentStickers';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'is_attached': this.isAttached,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
