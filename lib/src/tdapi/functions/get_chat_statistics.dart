part of '../tdapi.dart';

/// Group.Functions
/// Returns detailed statistics about a chat. Currently this method can be used only for supergroups and channels. Can be used only if SupergroupFullInfo.can_get_statistics == true
class GetChatStatistics extends TdFunction {
  GetChatStatistics({required this.chatId, required this.isDark});

  /// chat_id Chat identifier
  final int chatId;

  /// is_dark Pass true if a dark theme is used by the application
  final bool isDark;

  /// callback sign
  dynamic extra;

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
