part of '../tdapi.dart';

/// Group.Functions
/// Returns detailed statistics about a message. Can be used only if Message.can_get_statistics == true
class GetMessageStatistics extends TdFunction {
  GetMessageStatistics(
      {required this.chatId, required this.messageId, required this.isDark});

  /// chat_id Chat identifier
  final int chatId;

  /// message_id Message identifier
  final int messageId;

  /// is_dark Pass true if a dark theme is used by the application
  final bool isDark;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getMessageStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'is_dark': this.isDark,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
