part of '../tdapi.dart';

/// Group.Functions
/// Returns saved animations
class GetSavedAnimations extends TdFunction {
  GetSavedAnimations();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getSavedAnimations';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
