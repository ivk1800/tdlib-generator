import '../tdapi.dart';

/// New message was received through a push notification
class NotificationTypeNewPushMessage extends NotificationType {
  NotificationTypeNewPushMessage(
      {required this.messageId,
      required this.sender,
      required this.senderName,
      required this.isOutgoing,
      required this.content});

  /// [messageId] The message identifier. The message will not be available in
  /// chat history, but the ID can be used in viewMessages, or as
  final int messageId;

  /// [sender] The sender of the message. Corresponding user or chat may be
  final MessageSender sender;

  /// [senderName] Name of the sender
  final String senderName;

  /// [isOutgoing] True, if the message is outgoing
  final bool isOutgoing;

  /// [content] Push message content
  final PushMessageContent content;

  static const String CONSTRUCTOR = 'notificationTypeNewPushMessage';

  static NotificationTypeNewPushMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NotificationTypeNewPushMessage(
        messageId: json['message_id'],
        sender: MessageSender.fromJson(json['sender'])!,
        senderName: json['sender_name'],
        isOutgoing: json['is_outgoing'],
        content: PushMessageContent.fromJson(json['content'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'message_id': this.messageId,
        'sender': this.sender,
        'sender_name': this.senderName,
        'is_outgoing': this.isOutgoing,
        'content': this.content,
        '@type': CONSTRUCTOR
      };
}
