part of '../tdapi.dart';

/// Group.Functions
/// Deletes existing chat filter
class DeleteChatFilter extends TdFunction {
  DeleteChatFilter({required this.chatFilterId});

  /// chat_filter_id Chat filter identifier
  final int chatFilterId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'deleteChatFilter';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_filter_id': this.chatFilterId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
