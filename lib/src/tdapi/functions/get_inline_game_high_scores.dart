import '../tdapi.dart';

/// Returns game high scores and some part of the high score table in the
/// of the specified user; for bots only
/// Returns [GameHighScores]
class GetInlineGameHighScores extends TdFunction {
  GetInlineGameHighScores(
      {required this.inlineMessageId, required this.userId, this.extra});

  /// [inlineMessageId] Inline message identifier
  final String inlineMessageId;

  /// [userId] User identifier
  final int userId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getInlineGameHighScores';

  @override
  dynamic? getExtra() => this.extra;
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
