part of '../tdapi.dart';

/// Group.Objects
/// The slow_mode_delay setting of a supergroup was changed
class ChatEventSlowModeDelayChanged extends ChatEventAction {
  ChatEventSlowModeDelayChanged(
      {required this.oldSlowModeDelay, required this.newSlowModeDelay});

  /// old_slow_mode_delay Previous value of slow_mode_delay
  final int oldSlowModeDelay;

  /// new_slow_mode_delay New value of slow_mode_delay
  final int newSlowModeDelay;

  static const String CONSTRUCTOR = 'chatEventSlowModeDelayChanged';

  static ChatEventSlowModeDelayChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventSlowModeDelayChanged(
        oldSlowModeDelay: json['old_slow_mode_delay'],
        newSlowModeDelay: json['new_slow_mode_delay']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'old_slow_mode_delay': this.oldSlowModeDelay,
        'new_slow_mode_delay': this.newSlowModeDelay,
        '@type': CONSTRUCTOR
      };
}
