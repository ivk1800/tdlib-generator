import '../tdapi.dart';

/// Changes the marked as unread state of a chat
/// Returns [Ok]
class ToggleChatIsMarkedAsUnread extends TdFunction {
  ToggleChatIsMarkedAsUnread(
      {required this.chatId, required this.isMarkedAsUnread, this.extra});

  /// [chatId] Chat identifier
  final int chatId;

  /// [isMarkedAsUnread] New value of is_marked_as_unread
  final bool isMarkedAsUnread;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'toggleChatIsMarkedAsUnread';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'is_marked_as_unread': this.isMarkedAsUnread,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
