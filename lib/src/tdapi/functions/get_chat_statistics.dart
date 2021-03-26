import '../tdapi.dart';

/// Returns detailed statistics about a chat. Currently this method can be
/// only for supergroups and channels. Can be used only if
/// == true
/// Returns [ChatStatistics]
class GetChatStatistics extends TdFunction {
  GetChatStatistics({required this.chatId, required this.isDark});

  /// [chatId] Chat identifier
  final int chatId;

  /// [isDark] Pass true if a dark theme is used by the application
  final bool isDark;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getChatStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'is_dark': this.isDark,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
