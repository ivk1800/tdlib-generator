part of '../tdapi.dart';

/// Group.Functions
/// Informs TDLib that the chat is closed by the user. Many useful activities depend on the chat being opened or closed
class CloseChat extends TdFunction {
  CloseChat({required this.chatId});

  /// chat_id Chat identifier
  final int chatId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'closeChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
