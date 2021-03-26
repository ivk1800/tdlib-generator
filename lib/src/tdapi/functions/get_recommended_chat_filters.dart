import '../tdapi.dart';

/// Returns recommended chat filters for the current user
/// Returns [RecommendedChatFilters]
class GetRecommendedChatFilters extends TdFunction {
  GetRecommendedChatFilters({this.extra});

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getRecommendedChatFilters';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
