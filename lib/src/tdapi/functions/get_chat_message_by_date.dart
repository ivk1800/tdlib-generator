import '../tdapi.dart';

/// Returns the last message sent in a chat no later than the specified date
class GetChatMessageByDate extends TdFunction {
  GetChatMessageByDate({required this.chatId, required this.date});

  /// [chatId] Chat identifier
  final int chatId;

  /// [date] Point in time (Unix timestamp) relative to which to search for
  final int date;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getChatMessageByDate';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'date': this.date,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
