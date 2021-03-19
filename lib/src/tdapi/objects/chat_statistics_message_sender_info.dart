part of '../tdapi.dart';

/// Group.Objects
/// Contains statistics about messages sent by a user
class ChatStatisticsMessageSenderInfo extends TdObject {
  ChatStatisticsMessageSenderInfo(
      {required this.userId,
      required this.sentMessageCount,
      required this.averageCharacterCount});

  /// user_id User identifier
  final int userId;

  /// sent_message_count Number of sent messages
  final int sentMessageCount;

  /// average_character_count Average number of characters in sent messages
  final int averageCharacterCount;

  static const String CONSTRUCTOR = 'chatStatisticsMessageSenderInfo';

  static ChatStatisticsMessageSenderInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatStatisticsMessageSenderInfo(
        userId: json['user_id'],
        sentMessageCount: json['sent_message_count'],
        averageCharacterCount: json['average_character_count']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_id': this.userId,
        'sent_message_count': this.sentMessageCount,
        'average_character_count': this.averageCharacterCount,
        '@type': CONSTRUCTOR
      };
}
