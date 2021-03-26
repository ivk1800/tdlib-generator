import '../tdapi.dart';

/// Blocks an original sender of a message in the Replies chat
/// Returns [Ok]
class BlockMessageSenderFromReplies extends TdFunction {
  BlockMessageSenderFromReplies(
      {required this.messageId,
      required this.deleteMessage,
      required this.deleteAllMessages,
      required this.reportSpam,
      this.extra});

  /// [messageId] The identifier of an incoming message in the Replies chat
  final int messageId;

  /// [deleteMessage] Pass true if the message must be deleted
  final bool deleteMessage;

  /// [deleteAllMessages] Pass true if all messages from the same sender must be
  final bool deleteAllMessages;

  /// [reportSpam] Pass true if the sender must be reported to the Telegram
  final bool reportSpam;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'blockMessageSenderFromReplies';

  @override
  dynamic? getExtra() => this.extra;
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
