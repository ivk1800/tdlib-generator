import '../tdapi.dart';

/// Returns information about a chat filter by its identifier
class GetChatFilter extends TdFunction {
  GetChatFilter({required this.chatFilterId});

  /// [chatFilterId] Chat filter identifier
  final int chatFilterId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getChatFilter';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_filter_id': this.chatFilterId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
