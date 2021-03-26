import '../tdapi.dart';

/// Changes the order of chat filters
/// Returns [Ok]
class ReorderChatFilters extends TdFunction {
  ReorderChatFilters({required this.chatFilterIds, this.extra});

  /// [chatFilterIds] Identifiers of chat filters in the new correct order
  final List<int> chatFilterIds;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'reorderChatFilters';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_filter_ids': chatFilterIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
