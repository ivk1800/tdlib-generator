part of '../tdapi.dart';

/// Constructs a persistent HTTP URL for a background
class GetBackgroundUrl extends TdFunction {
  GetBackgroundUrl({required this.name, required this.type});

  /// [name] Background name
  final String name;

  /// [type] Background type
  final BackgroundType type;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getBackgroundUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'name': this.name,
        'type': this.type,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
