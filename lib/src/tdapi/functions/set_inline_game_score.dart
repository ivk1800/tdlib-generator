part of '../tdapi.dart';

/// Group.Functions
/// Updates the game score of the specified user in a game; for bots only
class SetInlineGameScore extends TdFunction {
  SetInlineGameScore(
      {required this.inlineMessageId,
      required this.editMessage,
      required this.userId,
      required this.score,
      required this.force});

  /// inline_message_id Inline message identifier
  final String inlineMessageId;

  /// edit_message True, if the message should be edited
  final bool editMessage;

  /// user_id User identifier
  final int userId;

  /// score The new score
  final int score;

  /// force Pass true to update the score even if it decreases. If the score is 0, the user will be deleted from the high score table
  final bool force;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'setInlineGameScore';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'inline_message_id': this.inlineMessageId,
        'edit_message': this.editMessage,
        'user_id': this.userId,
        'score': this.score,
        'force': this.force,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
