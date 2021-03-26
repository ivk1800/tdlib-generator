import '../tdapi.dart';

/// Sends a notification about a screenshot taken in a chat. Supported only in
/// and secret chats
/// Returns [Ok]
class SendChatScreenshotTakenNotification extends TdFunction {
  SendChatScreenshotTakenNotification({required this.chatId, this.extra});

  /// [chatId] Chat identifier
  final int chatId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'sendChatScreenshotTakenNotification';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
