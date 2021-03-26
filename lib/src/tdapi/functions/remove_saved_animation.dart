import '../tdapi.dart';

/// Removes an animation from the list of saved animations
/// Returns [Ok]
class RemoveSavedAnimation extends TdFunction {
  RemoveSavedAnimation({required this.animation, this.extra});

  /// [animation] Animation file to be removed
  final InputFile animation;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'removeSavedAnimation';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'animation': this.animation.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
