part of '../tdapi.dart';

/// Group.Functions
/// Returns game high scores and some part of the high score table in the range of the specified user; for bots only
class GetInlineGameHighScores extends TdFunction {
  GetInlineGameHighScores(
      {required this.inlineMessageId, required this.userId});

  /// inline_message_id Inline message identifier
  final String inlineMessageId;

  /// user_id User identifier
  final int userId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getInlineGameHighScores';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'inline_message_id': this.inlineMessageId,
        'user_id': this.userId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
