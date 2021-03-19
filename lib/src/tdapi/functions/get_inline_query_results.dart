part of '../tdapi.dart';

/// Group.Functions
/// Sends an inline query to a bot and returns its results. Returns an error with code 502 if the bot fails to answer the query before the query timeout expires
class GetInlineQueryResults extends TdFunction {
  GetInlineQueryResults(
      {required this.botUserId,
      required this.chatId,
      required this.userLocation,
      required this.query,
      required this.offset});

  /// bot_user_id The identifier of the target bot
  final int botUserId;

  /// chat_id Identifier of the chat where the query was sent
  final int chatId;

  /// user_location Location of the user, only if needed
  final Location userLocation;

  /// query Text of the query
  final String query;

  /// offset Offset of the first entry to return
  final String offset;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getInlineQueryResults';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'bot_user_id': this.botUserId,
        'chat_id': this.chatId,
        'user_location': this.userLocation,
        'query': this.query,
        'offset': this.offset,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
