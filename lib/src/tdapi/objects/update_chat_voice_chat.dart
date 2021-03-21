import '../tdapi.dart';

/// A chat voice chat state has changed
class UpdateChatVoiceChat extends Update {
  UpdateChatVoiceChat(
      {required this.chatId,
      required this.voiceChatGroupCallId,
      required this.isVoiceChatEmpty});

  /// [chatId] Chat identifier
  final int chatId;

  /// [voiceChatGroupCallId] New value of voice_chat_group_call_id
  final int voiceChatGroupCallId;

  /// [isVoiceChatEmpty] New value of is_voice_chat_empty
  final bool isVoiceChatEmpty;

  static const String CONSTRUCTOR = 'updateChatVoiceChat';

  static UpdateChatVoiceChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatVoiceChat(
        chatId: json['chat_id'],
        voiceChatGroupCallId: json['voice_chat_group_call_id'],
        isVoiceChatEmpty: json['is_voice_chat_empty']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'voice_chat_group_call_id': this.voiceChatGroupCallId,
        'is_voice_chat_empty': this.isVoiceChatEmpty,
        '@type': CONSTRUCTOR
      };
}
