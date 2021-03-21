part of '../tdapi.dart';

/// Removes an animation from the list of saved animations
class RemoveSavedAnimation extends TdFunction {
  RemoveSavedAnimation({required this.animation});

  /// [animation] Animation file to be removed
  final InputFile animation;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'removeSavedAnimation';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'animation': this.animation, '@type': CONSTRUCTOR, '@extra': this.extra};
}
