part of '../tdapi.dart';

/// Group.Functions
/// Returns information about a single member of a chat
class GetChatMember extends TdFunction {
  GetChatMember({required this.chatId, required this.userId});

  /// chat_id Chat identifier
  final int chatId;

  /// user_id User identifier
  final int userId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getChatMember';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'user_id': this.userId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
