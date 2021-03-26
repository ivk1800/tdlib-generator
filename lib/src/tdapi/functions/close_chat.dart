import '../tdapi.dart';

/// Informs TDLib that the chat is closed by the user. Many useful activities
/// on the chat being opened or closed
/// Returns [Ok]
class CloseChat extends TdFunction {
  CloseChat({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'closeChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
