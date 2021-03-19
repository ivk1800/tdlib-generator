part of '../tdapi.dart';

/// Group.Functions
/// Returns information about a chat by its identifier, this is an offline request if the current user is not a bot
class GetChat extends TdFunction {
  GetChat({required this.chatId});

  /// chat_id Chat identifier
  final int chatId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
