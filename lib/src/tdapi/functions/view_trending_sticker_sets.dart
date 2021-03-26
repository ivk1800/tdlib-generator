import '../tdapi.dart';

/// Informs the server that some trending sticker sets have been viewed by the
/// Returns [Ok]
class ViewTrendingStickerSets extends TdFunction {
  ViewTrendingStickerSets({required this.stickerSetIds});

  /// [stickerSetIds] Identifiers of viewed trending sticker sets
  final List<int> stickerSetIds;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'viewTrendingStickerSets';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'sticker_set_ids': stickerSetIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
