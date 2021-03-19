part of '../tdapi.dart';

/// Group.Functions
/// Adds the current user as a new member to a chat. Private and secret chats can't be joined using this method
class JoinChat extends TdFunction {
  JoinChat({required this.chatId});

  /// chat_id Chat identifier
  final int chatId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'joinChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
