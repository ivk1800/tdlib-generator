import '../tdapi.dart';

/// Returns information about messages. If a message is not found, returns
/// on the corresponding position of the result
/// Returns [Messages]
class GetMessages extends TdFunction {
  GetMessages({required this.chatId, required this.messageIds, this.extra});

  /// [chatId] Identifier of the chat the messages belong to
  final int chatId;

  /// [messageIds] Identifiers of the messages to get
  final List<int> messageIds;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getMessages';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_ids': messageIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
