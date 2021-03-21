part of '../tdapi.dart';

/// Searches for messages in all chats except secret chats. Returns the
/// in reverse chronological order (i.e., in order of decreasing (date,
/// message_id)).. For optimal performance the number of returned messages is
/// by the library
class SearchMessages extends TdFunction {
  SearchMessages(
      {required this.chatList,
      required this.query,
      required this.offsetDate,
      required this.offsetChatId,
      required this.offsetMessageId,
      required this.limit,
      required this.filter,
      required this.minDate,
      required this.maxDate});

  /// [chatList] Chat list in which to search messages; pass null to search in
  /// chats regardless of their chat list
  final ChatList chatList;

  /// [query] Query to search for
  final String query;

  /// [offsetDate] The date of the message starting from which the results
  /// be fetched. Use 0 or any date in the future to get results from the last
  final int offsetDate;

  /// [offsetChatId] The chat identifier of the last found message, or 0 for the
  /// request
  final int offsetChatId;

  /// [offsetMessageId] The message identifier of the last found message, or 0
  /// the first request
  final int offsetMessageId;

  /// [limit] The maximum number of messages to be returned; up to 100. Fewer
  /// may be returned than specified by the limit, even if the end of the
  /// history has not been reached
  final int limit;

  /// [filter] Filter for message content in the search results;
  /// searchMessagesFilterMissedCall, searchMessagesFilterMention,
  /// searchMessagesFilterFailedToSend and searchMessagesFilterPinned are
  /// in this function
  final SearchMessagesFilter filter;

  /// [minDate] If not 0, the minimum date of the messages to return
  final int minDate;

  /// [maxDate] If not 0, the maximum date of the messages to return
  final int maxDate;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'searchMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_list': this.chatList,
        'query': this.query,
        'offset_date': this.offsetDate,
        'offset_chat_id': this.offsetChatId,
        'offset_message_id': this.offsetMessageId,
        'limit': this.limit,
        'filter': this.filter,
        'min_date': this.minDate,
        'max_date': this.maxDate,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
