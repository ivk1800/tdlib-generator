import '../tdapi.dart';

/// Returns backgrounds installed by the user
/// Returns [Backgrounds]
class GetBackgrounds extends TdFunction {
  GetBackgrounds({required this.forDarkTheme});

  /// [forDarkTheme] True, if the backgrounds must be ordered for dark theme
  final bool forDarkTheme;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getBackgrounds';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'for_dark_theme': this.forDarkTheme,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
