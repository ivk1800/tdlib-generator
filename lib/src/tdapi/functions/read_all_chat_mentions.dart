part of '../tdapi.dart';

/// Group.Functions
/// Marks all mentions in a chat as read
class ReadAllChatMentions extends TdFunction {
  ReadAllChatMentions({required this.chatId});

  /// chat_id Chat identifier
  final int chatId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'readAllChatMentions';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
