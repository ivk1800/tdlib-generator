part of '../tdapi.dart';

/// Group.Functions
/// Changes the slow mode delay of a chat. Available only for supergroups; requires can_restrict_members rights
class SetChatSlowModeDelay extends TdFunction {
  SetChatSlowModeDelay({required this.chatId, required this.slowModeDelay});

  /// chat_id Chat identifier
  final int chatId;

  /// slow_mode_delay New slow mode delay for the chat; must be one of 0, 10, 30, 60, 300, 900, 3600
  final int slowModeDelay;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'setChatSlowModeDelay';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'slow_mode_delay': this.slowModeDelay,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
