part of '../tdapi.dart';

/// Group.Functions
/// Resets list of installed backgrounds to its default value
class ResetBackgrounds extends TdFunction {
  ResetBackgrounds();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'resetBackgrounds';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
