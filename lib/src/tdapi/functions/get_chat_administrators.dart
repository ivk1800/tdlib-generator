import '../tdapi.dart';

/// Returns a list of administrators of the chat with their custom titles
/// Returns [ChatAdministrators]
class GetChatAdministrators extends TdFunction {
  GetChatAdministrators({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getChatAdministrators';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
