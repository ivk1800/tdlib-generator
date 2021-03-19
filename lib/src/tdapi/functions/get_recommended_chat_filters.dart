part of '../tdapi.dart';

/// Group.Functions
/// Returns recommended chat filters for the current user
class GetRecommendedChatFilters extends TdFunction {
  GetRecommendedChatFilters();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getRecommendedChatFilters';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
