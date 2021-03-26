import '../tdapi.dart';

/// Creates a voice chat (a group call bound to a chat). Available only for
/// groups and supergroups; requires can_manage_voice_chats rights
/// Returns [GroupCallId]
class CreateVoiceChat extends TdFunction {
  CreateVoiceChat({required this.chatId, this.extra});

  /// [chatId] Chat identifier
  final int chatId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'createVoiceChat';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
