part of '../tdapi.dart';

/// Group.Functions
/// Manually adds a new animation to the list of saved animations. The new animation is added to the beginning of the list. If the animation was already in the list, it is removed first. Only non-secret video animations with MIME type "video/mp4" can be added to the list
class AddSavedAnimation extends TdFunction {
  AddSavedAnimation({required this.animation});

  /// animation The animation file to be added. Only animations known to the server (i.e. successfully sent via a message) can be added to the list
  final InputFile animation;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'addSavedAnimation';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'animation': this.animation, '@type': CONSTRUCTOR, '@extra': this.extra};
}
