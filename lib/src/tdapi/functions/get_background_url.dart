import '../tdapi.dart';

/// Constructs a persistent HTTP URL for a background
/// Returns [HttpUrl]
class GetBackgroundUrl extends TdFunction {
  GetBackgroundUrl({required this.name, required this.type, this.extra});

  /// [name] Background name
  final String name;

  /// [type] Background type
  final BackgroundType type;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getBackgroundUrl';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'name': this.name,
        'type': this.type.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
