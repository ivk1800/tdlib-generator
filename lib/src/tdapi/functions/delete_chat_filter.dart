import '../tdapi.dart';

/// Deletes existing chat filter
/// Returns [Ok]
class DeleteChatFilter extends TdFunction {
  DeleteChatFilter({required this.chatFilterId, this.extra});

  /// [chatFilterId] Chat filter identifier
  final int chatFilterId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'deleteChatFilter';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_filter_id': this.chatFilterId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
