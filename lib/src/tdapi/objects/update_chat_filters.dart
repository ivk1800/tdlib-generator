part of '../tdapi.dart';

/// Group.Objects
/// The list of chat filters or a chat filter has changed
class UpdateChatFilters extends Update {
  UpdateChatFilters({required this.chatFilters});

  /// chat_filters The new list of chat filters
  final List<ChatFilterInfo> chatFilters;

  static const String CONSTRUCTOR = 'updateChatFilters';

  static UpdateChatFilters? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatFilters(
        chatFilters: List<ChatFilterInfo>.from((json['chat_filters}'] ?? [])
            .map((item) => ChatFilterInfo.fromJson(json['ChatFilterInfo'])!)
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_filters': this.chatFilters, '@type': CONSTRUCTOR};
}
