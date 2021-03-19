part of '../tdapi.dart';

/// Group.Objects
/// A message was edited
class ChatEventMessageEdited extends ChatEventAction {
  ChatEventMessageEdited({required this.oldMessage, required this.newMessage});

  /// old_message The original message before the edit
  final Message oldMessage;

  /// new_message The message after it was edited
  final Message newMessage;

  static const String CONSTRUCTOR = 'chatEventMessageEdited';

  static ChatEventMessageEdited? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMessageEdited(
        oldMessage: Message.fromJson(json['old_message'])!,
        newMessage: Message.fromJson(json['new_message'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'old_message': this.oldMessage,
        'new_message': this.newMessage,
        '@type': CONSTRUCTOR
      };
}
