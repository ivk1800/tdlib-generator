import '../tdapi.dart';

/// Returns the high scores for a game and some part of the high score table
/// the range of the specified user; for bots only
/// Returns [GameHighScores]
class GetGameHighScores extends TdFunction {
  GetGameHighScores(
      {required this.chatId,
      required this.messageId,
      required this.userId,
      this.extra});

  /// [chatId] The chat that contains the message with the game
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [userId] User identifier
  final int userId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getGameHighScores';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'user_id': this.userId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
