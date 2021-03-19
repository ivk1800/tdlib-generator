part of '../tdapi.dart';

/// Group.Functions
/// Changes the chat title. Supported only for basic groups, supergroups and channels. Requires can_change_info rights
class SetChatTitle extends TdFunction {
  SetChatTitle({required this.chatId, required this.title});

  /// chat_id Chat identifier
  final int chatId;

  /// title New title of the chat; 1-128 characters
  final String title;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'setChatTitle';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'title': this.title,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
