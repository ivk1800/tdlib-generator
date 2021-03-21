import '../tdapi.dart';

/// Contains a list of recommended chat filters
class RecommendedChatFilters extends TdObject {
  RecommendedChatFilters({required this.chatFilters, this.extra});

  /// [chatFilters] List of recommended chat filters
  final List<RecommendedChatFilter> chatFilters;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'recommendedChatFilters';

  static RecommendedChatFilters? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RecommendedChatFilters(
        chatFilters: List<RecommendedChatFilter>.from(
            (json['chat_filters}'] ?? [])
                .map((item) => RecommendedChatFilter.fromJson(item))
                .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_filters': this.chatFilters,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
