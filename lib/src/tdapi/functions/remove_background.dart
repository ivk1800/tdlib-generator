import '../tdapi.dart';

/// Removes background from the list of installed backgrounds
/// Returns [Ok]
class RemoveBackground extends TdFunction {
  RemoveBackground({required this.backgroundId});

  /// [backgroundId] The background identifier
  final int backgroundId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'removeBackground';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'background_id': this.backgroundId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
