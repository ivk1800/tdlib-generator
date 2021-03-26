import '../tdapi.dart';

/// Resets list of installed backgrounds to its default value
/// Returns [Ok]
class ResetBackgrounds extends TdFunction {
  ResetBackgrounds();

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'resetBackgrounds';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
