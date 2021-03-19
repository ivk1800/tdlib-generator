part of '../tdapi.dart';

/// Group.Functions
/// Edits existing chat filter. Returns information about the edited chat filter
class EditChatFilter extends TdFunction {
  EditChatFilter({required this.chatFilterId, required this.filter});

  /// chat_filter_id Chat filter identifier
  final int chatFilterId;

  /// filter The edited chat filter
  final ChatFilter filter;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'editChatFilter';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_filter_id': this.chatFilterId,
        'filter': this.filter,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
