part of '../tdapi.dart';

/// Group.Objects
/// The user is typing a message
class ChatActionTyping extends ChatAction {
  const ChatActionTyping();

  static const String CONSTRUCTOR = 'chatActionTyping';

  static ChatActionTyping? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionTyping();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
