import '../tdapi.dart';

/// Informs TDLib that the message content has been opened (e.g., the user has
/// a photo, video, document, location or venue, or has listened to an audio
/// or voice note message). An updateMessageContentOpened update will be
/// if something has changed
/// Returns [Ok]
class OpenMessageContent extends TdFunction {
  OpenMessageContent(
      {required this.chatId, required this.messageId, this.extra});

  /// [chatId] Chat identifier of the message
  final int chatId;

  /// [messageId] Identifier of the message with the opened content
  final int messageId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'openMessageContent';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
