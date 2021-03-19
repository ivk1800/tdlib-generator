part of '../tdapi.dart';

/// Group.Functions
/// Blocks an original sender of a message in the Replies chat
class BlockMessageSenderFromReplies extends TdFunction {
  BlockMessageSenderFromReplies(
      {required this.messageId,
      required this.deleteMessage,
      required this.deleteAllMessages,
      required this.reportSpam});

  /// message_id The identifier of an incoming message in the Replies chat
  final int messageId;

  /// delete_message Pass true if the message must be deleted
  final bool deleteMessage;

  /// delete_all_messages Pass true if all messages from the same sender must be deleted
  final bool deleteAllMessages;

  /// report_spam Pass true if the sender must be reported to the Telegram moderators
  final bool reportSpam;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'blockMessageSenderFromReplies';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'message_id': this.messageId,
        'delete_message': this.deleteMessage,
        'delete_all_messages': this.deleteAllMessages,
        'report_spam': this.reportSpam,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
