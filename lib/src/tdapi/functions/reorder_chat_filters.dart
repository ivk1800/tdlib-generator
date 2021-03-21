part of '../tdapi.dart';

/// Changes the order of chat filters
class ReorderChatFilters extends TdFunction {
  ReorderChatFilters({required this.chatFilterIds});

  /// [chatFilterIds] Identifiers of chat filters in the new correct order
  final List<int> chatFilterIds;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'reorderChatFilters';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_filter_ids': this.chatFilterIds,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
