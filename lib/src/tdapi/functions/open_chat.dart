import '../tdapi.dart';

/// Informs TDLib that the chat is opened by the user. Many useful activities
/// on the chat being opened or closed (e.g., in supergroups and channels all
/// are received only for opened chats)
/// Returns [Ok]
class OpenChat extends TdFunction {
  OpenChat({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'openChat';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
