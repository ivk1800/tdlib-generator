import '../tdapi.dart';

/// Marks all mentions in a chat as read
/// Returns [Ok]
class ReadAllChatMentions extends TdFunction {
  ReadAllChatMentions({required this.chatId, this.extra});

  /// [chatId] Chat identifier
  final int chatId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'readAllChatMentions';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
