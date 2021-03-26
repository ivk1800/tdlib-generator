import '../tdapi.dart';

/// Adds the current user as a new member to a chat. Private and secret chats
/// be joined using this method
/// Returns [Ok]
class JoinChat extends TdFunction {
  JoinChat({required this.chatId, this.extra});

  /// [chatId] Chat identifier
  final int chatId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'joinChat';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
