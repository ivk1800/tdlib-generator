part of '../tdapi.dart';

/// Group.Functions
/// Returns the high scores for a game and some part of the high score table in the range of the specified user; for bots only
class GetGameHighScores extends TdFunction {
  GetGameHighScores(
      {required this.chatId, required this.messageId, required this.userId});

  /// chat_id The chat that contains the message with the game
  final int chatId;

  /// message_id Identifier of the message
  final int messageId;

  /// user_id User identifier
  final int userId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getGameHighScores';

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
