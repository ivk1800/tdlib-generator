part of '../tdapi.dart';

/// Group.Functions
/// Clears the list of recently used stickers
class ClearRecentStickers extends TdFunction {
  ClearRecentStickers({required this.isAttached});

  /// is_attached Pass true to clear the list of stickers recently attached to photo or video files; pass false to clear the list of recently sent stickers
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
