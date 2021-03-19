part of '../tdapi.dart';

/// Group.Objects
/// A chat was blocked or unblocked
class UpdateChatIsBlocked extends Update {
  UpdateChatIsBlocked({required this.chatId, required this.isBlocked});

  /// chat_id Chat identifier
  final int chatId;

  /// is_blocked New value of is_blocked
  final bool isBlocked;

  static const String CONSTRUCTOR = 'updateChatIsBlocked';

  static UpdateChatIsBlocked? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatIsBlocked(
        chatId: json['chat_id'], isBlocked: json['is_blocked']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'is_blocked': this.isBlocked,
        '@type': CONSTRUCTOR
      };
}
