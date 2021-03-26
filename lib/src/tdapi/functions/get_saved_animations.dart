import '../tdapi.dart';

/// Returns saved animations
/// Returns [Animations]
class GetSavedAnimations extends TdFunction {
  GetSavedAnimations();

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getSavedAnimations';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
