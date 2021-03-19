part of '../tdapi.dart';

/// Group.Functions
/// Removes the current user from chat members. Private and secret chats can't be left using this method
class LeaveChat extends TdFunction {
  LeaveChat({required this.chatId});

  /// chat_id Chat identifier
  final int chatId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'leaveChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
