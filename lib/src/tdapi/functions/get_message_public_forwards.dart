import '../tdapi.dart';

/// Returns forwarded copies of a channel message to different public
/// For optimal performance the number of returned messages is chosen by the
class GetMessagePublicForwards extends TdFunction {
  GetMessagePublicForwards(
      {required this.chatId,
      required this.messageId,
      required this.offset,
      required this.limit});

  /// [chatId] Chat identifier of the message
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [offset] Offset of the first entry to return as received from the previous
  /// use empty string to get first chunk of results
  final String offset;

  /// [limit] The maximum number of messages to be returned; must be positive
  /// can't be greater than 100. Fewer messages may be returned than specified
  /// the limit, even if the end of the list has not been reached
  final int limit;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getMessagePublicForwards';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'offset': this.offset,
        'limit': this.limit,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
