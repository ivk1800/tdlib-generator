import '../tdapi.dart';

/// Represents a game
class InputInlineQueryResultGame extends InputInlineQueryResult {
  InputInlineQueryResultGame(
      {required this.id,
      required this.gameShortName,
      ReplyMarkup? this.replyMarkup});

  /// [id] Unique identifier of the query result
  final String id;

  /// [gameShortName] Short name of the game
  final String gameShortName;

  /// [replyMarkup] Message reply markup. Must be of type
  /// or null
  final ReplyMarkup? replyMarkup;

  static const String CONSTRUCTOR = 'inputInlineQueryResultGame';

  static InputInlineQueryResultGame? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultGame(
        id: json['id'],
        gameShortName: json['game_short_name'],
        replyMarkup: ReplyMarkup.fromJson(json['reply_markup']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'game_short_name': this.gameShortName,
        'reply_markup': this.replyMarkup,
        '@type': CONSTRUCTOR
      };
}
